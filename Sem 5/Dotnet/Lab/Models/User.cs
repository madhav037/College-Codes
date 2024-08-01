using System.ComponentModel.DataAnnotations;

namespace Lab.Models
{
    public class User
    {
        public int UserID { get; set; }
        
        [Required]
        public string UserName { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        public string Password { get; set; }

        [Required]
        public string MobileNo { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        public bool isActive { get; set; }
    }
}
