using System.ComponentModel.DataAnnotations;

namespace Bmis2.Models
{
    public class residents
    {
        public string resID { get; set; }
        public string? houseID { get; set; } = "";
        [Required]
        public string fname { get; set; } = "";
        public string mname { get; set; } = "";
        [Required]
        public string lname { get; set; } = "";
        public string ext { get; set; } = "";
        [Required]
        public string purok { get; set; } = "";
        [Required]
        public string gender { get; set; } = "";
        [Required]
        public DateTime? bdate { get; set; } = DateTime.Now;
        [Required]
        public string status { get; set; } = "";
        [Required]
        public string contact { get; set; } = "";
        public string fullname { get; set; } = "";
        public string head { get; set; } = "";
        [Required]
        public string age { get; set; } = "";
        [Required]
        public string username { get; set; } = "";
        [Required]
        public string password { get; set; } = "";
        [Required]
        public string password2 { get; set; } = "";
        [Required]
        public string email { get; set; } = "";
        public string token { get; set; } = "";
    }
}
