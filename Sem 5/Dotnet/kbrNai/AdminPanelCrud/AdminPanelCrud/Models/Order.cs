using System.ComponentModel.DataAnnotations;

namespace AdminPanelCrud.Models
{
    public class Order
    {
        [Required]
        public int OrderID { get; set; }
        [Required(ErrorMessage = " Enter Date")]
        public DateTime OrderDate { get; set; }
        [Required(ErrorMessage = " Enter Customer")]

        public int CustomerID { get; set; }
            [Required(ErrorMessage = " Enter Payment mode")]

        public string PaymentMode { get; set; }
        [Required(ErrorMessage = " Enter Amount")]
        public decimal TotalAmount { get; set; }
        [Required(ErrorMessage = " Enter Address")]

        public string ShippingAddress { get; set; }
        [Required(ErrorMessage = " Enter User")]

        public int UserID { get; set; }
    }

    public class CustomerDropDownModel
    {
        [Required]
        public int CustomerId { get; set; }
        [Required(ErrorMessage = " Enter Name")]

        public string CustomerName { get; set; }
    }

    public class UserDropDownModel
    {
        [Required]
        public int UserID { get; set; }
        [Required(ErrorMessage = "Enter Name")]

        public string UserName { get; set; }
    }
}
