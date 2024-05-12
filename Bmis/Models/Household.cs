using System.ComponentModel.DataAnnotations;

namespace Bmis.Models
{
    public class household
    {
        [Required]
        public string houseID { get; set; } = "";
        public string resID { get; set; } = "";
        public string age { get; set; } = "";
        [Required]
        public string head { get; set; } = "";
        [Required]
        public string purok { get; set; } = "";
        public string fullname { get; set; } = "";
    }
}
