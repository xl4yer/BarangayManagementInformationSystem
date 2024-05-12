using System.ComponentModel.DataAnnotations;

namespace Bmis.Models
{
    public class users
    {
        public string userID { get; set; }
        [Required]
        public string name { get; set; } = "";
        [Required]
        public string username { get; set; } = "";
        [Required]
        public string password { get; set; } = "";
        [Required]
        public string role { get; set; } = "";
        public string token { get; set; } = "";
    }
}
