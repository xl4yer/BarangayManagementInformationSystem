using System.ComponentModel.DataAnnotations;

namespace Bmis.Models
{
    public class clearance
    {
        public string clearID { get; set; } = "";
        [Required]
        public string resID { get; set; } = "";
        public DateTime? date { get; set; } = DateTime.Now;
        [Required]
        public string purpose { get; set; } = "";
        public string age { get; set; } = "";
        public string fullname { get; set; } = "";
        public string purok { get; set; } = "";
        public string gender { get; set; } = "";
        public string type { get; set; } = "";
        public string rstatus { get; set; } = "Submitted";
    }
}
