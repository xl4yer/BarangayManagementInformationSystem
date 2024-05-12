using System.ComponentModel.DataAnnotations;

namespace Bmis2.Models
{
    public class clearance
    {
        public string clearID { get; set; }
        public string resID { get; set; }
        public DateTime? date { get; set; } = DateTime.Now;

        [Required]
        public string purpose { get; set; } = "";
        public string type { get; set; } = "Brgy. Clearance";
        public string rstatus { get; set; } = "Submitted";
    }
}
