using System.ComponentModel.DataAnnotations;

namespace Bmis.Models
{
    public class residents
    {
        public string resID { get; set; } = "";
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
        public DateTime? bdate { get; set; } = DateTime.Now;
        [Required]
        public string status { get; set; } = "";
        [Required]
        public string contact { get; set; } = "";
        public string fullname { get; set; } = "";
        public string head { get; set; } = "";
        public string age { get; set; } = "";
        public string username { get; set; } = "";
        public string password { get; set; } = "";
        public string email { get; set; } = "";
        public string token { get; set; } = "";
    }
}