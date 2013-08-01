using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;


namespace XODB.SpatialDMS.ViewModels
{
    public class DigitiseOnMapViewModel
    {
       
            [Required, DisplayName("Item name:")]
            public string Name { get; set; }
            
            [DisplayName("Notes:")]
            public string Notes { get; set; }
            
            [DisplayName("Coordinates:")]
            public string Coordinates { get; set; }


        
    }
}