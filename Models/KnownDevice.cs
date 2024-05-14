using System.ComponentModel.DataAnnotations;

namespace alexandria.web.Models
{
    public class KnownDevice
    {
        [Required]
        public long Id { get; set; }

        [Required]
        public string DeviceName { get; set; }

        [Required]
        public string EbookDirectory { get; set; }

        [Required]
        public string SavePathTemplate { get; set; }

        [Required]
        public string Vendor { get; set; }

        [Required]
        public string SerialNumber { get; set; }
    }
}
