using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace WebApplication1.Models
{
    public class Student
    {
        public int StudentId { get; set; }
     
        [Required]
        public string StudentName { get; set; }
        
        [Required]
        public string EndrollmentNo { get; set; }
        
        [Required]
        public string Password { get; set; }
        
        [Required]
        public int RollNo { get; set; }
        
        [Required]
        public int CurrentSemester {  get; set; }
        
        [Required]
        public string EmailInstitute { get; set; }
        
        [Required]
        public string EmailPersonal { get; set; }
        
        [Required]
        public string ContactNo { get; set; }
        
        [Required]
        public int CityId { get; set; }
        
        [Required]
        public int CasteId { get; set; }
        
        [Required]
        public string Remarks { get; set; }
        
        [Required]
        public int BirthDate { get; set; }
        
        [Required]
        public int Age { get; set; }
    }
}
