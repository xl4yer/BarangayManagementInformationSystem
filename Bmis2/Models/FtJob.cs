namespace Bmis2.Models
{
    public class ftjob
    {
        public string ftjobID { get; set; }
        public string resID { get; set; } = "";
        public DateTime? date { get; set; } = DateTime.Now;
        public string fullname { get; set; } = "";
        public string purok { get; set; } = "";
        public string age { get; set; } = "";
        public string gender { get; set; } = "";
        public string type { get; set; } = "First Time Job";
        public string rstatus { get; set; } = "Submitted";
    }
}

