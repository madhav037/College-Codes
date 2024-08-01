using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class Ordercontroller : Controller
    {

        List<Order> orders = new List<Order>() { 
            new Order{ 
                OrderID = 1,
                CustomerID = 1,
                OrderDate = DateTime.Now,
                PaymentMode = "upi",
                ShippingAddress = "dbnvjfh",
                TotalAmount = 0,
                UserID = 1,
            },
            new Order{
                OrderID = 1,
                CustomerID = 1,
                OrderDate = DateTime.Now,
                PaymentMode = "upi",
                ShippingAddress = "dbnvjfh",
                TotalAmount = 0,
                UserID = 1,
            },
            new Order{
                OrderID = 1,
                CustomerID = 1,
                OrderDate = DateTime.Now,
                PaymentMode = "upi",
                ShippingAddress = "dbnvjfh",
                TotalAmount = 0,
                UserID = 1,
            },
            new Order{
                OrderID = 1,
                CustomerID = 1,
                OrderDate = DateTime.Now,
                PaymentMode = "upi",
                ShippingAddress = "dbnvjfh",
                TotalAmount = 0,
                UserID = 1,
            },new Order{
                OrderID = 1,
                CustomerID = 1,
                OrderDate = DateTime.Now,
                PaymentMode = "upi",
                ShippingAddress = "dbnvjfh",
                TotalAmount = 0,
                UserID = 1,
            },
        };
        public IActionResult Index()
        {
            return View(orders);
        }
        public IActionResult OrderAddEdit()
        {
            return View();
        }
    }
}
