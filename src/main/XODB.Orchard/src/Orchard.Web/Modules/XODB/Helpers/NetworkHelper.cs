using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

namespace XODB.Helpers
{
    public class NetworkHelper
    {

        private static bool IsLocal(IPAddress ipaddress)
        {
            if (ipaddress.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
            {

                var ipr = new List<IPAddressRange>();
                ipr.Add(new IPAddressRange(IPAddress.Parse("10.0.0.0"), IPAddress.Parse("10.255.255.255")));
                ipr.Add(new IPAddressRange(IPAddress.Parse("169.254.0.0"), IPAddress.Parse("169.254.255.255")));
                ipr.Add(new IPAddressRange(IPAddress.Parse("192.168.0.0"), IPAddress.Parse("192.168.255.255")));
                ipr.Add(new IPAddressRange(IPAddress.Parse("172.16.0.0"), IPAddress.Parse("172.31.255.255")));
                foreach (var range in ipr)
                {
                    if (range.IsInRange(ipaddress)) return true;

                }
            }
            if (ipaddress.AddressFamily == System.Net.Sockets.AddressFamily.InterNetworkV6)
            {
                if (ipaddress.IsIPv6LinkLocal || ipaddress.IsIPv6Multicast || ipaddress.IsIPv6SiteLocal || ipaddress.IsIPv6Teredo) return true;
            }
            return false;
        }

        public class IPAddressRange
        {
            readonly System.Net.Sockets.AddressFamily addressFamily;
            readonly byte[] lowerBytes;
            readonly byte[] upperBytes;

            public IPAddressRange(IPAddress lower, IPAddress upper)
            {
                // Assert that lower.AddressFamily == upper.AddressFamily

                this.addressFamily = lower.AddressFamily;
                this.lowerBytes = lower.GetAddressBytes();
                this.upperBytes = upper.GetAddressBytes();
            }

            public bool IsInRange(IPAddress address)
            {
                if (address.AddressFamily != addressFamily)
                {
                    return false;
                }

                byte[] addressBytes = address.GetAddressBytes();

                bool lowerBoundary = true, upperBoundary = true;

                for (int i = 0; i < this.lowerBytes.Length &&
                    (lowerBoundary || upperBoundary); i++)
                {
                    if ((lowerBoundary && addressBytes[i] < lowerBytes[i]) ||
                        (upperBoundary && addressBytes[i] > upperBytes[i]))
                    {
                        return false;
                    }

                    lowerBoundary &= (addressBytes[i] == lowerBytes[i]);
                    upperBoundary &= (addressBytes[i] == upperBytes[i]);
                }

                return true;
            }
        }
    }
}