namespace Lab.Models
{
    public class Order
    {
        public int OrderID { get; set; }
        public DateTime OrderDate { get; set; }
        public int CustomerID { get; set; }

        public string PaymentMode { get; set; }

        public decimal TotalAmount { get; set; }

        public string ShippingAddress { get; set; }

        public int UserID { get; set; }
    }
}
