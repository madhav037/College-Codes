using System.ComponentModel.DataAnnotations;

namespace audiproj.Models
{
    public class Product
    {
        [Required(ErrorMessage = "Product ID is required.")]
        public int ProductID { get; set; }

        [Required(ErrorMessage = "Product Name is required.")]
        [StringLength(100, ErrorMessage = "Product Name cannot be longer than 100 characters.")]
        public string ProductName { get; set; }

        [Required(ErrorMessage = "Product Price is required.")]
        [Range(0.01, 10000.00, ErrorMessage = "Product Price must be between 0.01 and 10,000.")]
        public decimal ProductPrice { get; set; }

        [Required(ErrorMessage = "Category is required.")]
        [StringLength(50, ErrorMessage = "Category cannot be longer than 50 characters.")]
        public string Category { get; set; }

        [Required(ErrorMessage = "Rating is required.")]
        [Range(1, 5, ErrorMessage = "Rating must be between 1 and 5.")]
        public int Rating { get; set; }

        [StringLength(500, ErrorMessage = "Product Description cannot be longer than 500 characters.")]
        public string ProductDescription { get; set; }

        [Required(ErrorMessage = "Product Company is required.")]
        [StringLength(100, ErrorMessage = "Product Company cannot be longer than 100 characters.")]
        public string ProductCompany { get; set; }
    }
}
