using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace XODB.Models
{
    public interface ISecured
    {
        Guid? SecurityID { get; set; }
        bool IsBlack { get; }

        Guid? AccessorApplicationID { get; set; }
        Guid? AccessorCompanyID { get; set; }
        Guid? AccessorRoleID { get; set; }
        Guid? AccessorContactID { get; set; }
        Guid? AccessorProjectID { get; set; }

        Guid? OwnerApplicationID { get; set; }
        Guid? OwnerCompanyID { get; set; }
        Guid? OwnerContactID { get; set; }
        Guid? OwnerProjectID { get; set; }
        string OwnerEntitySystemType { get; set; }
        string OwnerTableType { get; set; }
        string OwnerField { get; set; }
        Guid? OwnerReferenceID { get; set; }

        bool CanRead { get; set; }
        bool CanCreate { get; set; }
        bool CanUpdate { get; set; }
        bool CanDelete { get; set; }

    }

    [Flags]
    public enum ActionPermission : uint
    {
        None = 0x00,
        Read = 0x01,
        Update = 0x02,
        Create = 0x04,
        Delete = 0x08
    }
}
