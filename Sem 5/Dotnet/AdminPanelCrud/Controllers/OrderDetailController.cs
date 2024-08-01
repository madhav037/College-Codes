using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class OrderDetailController : Controller
    {
        List<OrderDetail> orderdetail = new List<OrderDetail> { 
            new OrderDetail{ 
                OrderDetailID = 1,
                Amount = 1,
                OrderID = 2,
                ProductID = 3,
                Quantity = 4,
                TotalAmount = 5,
                UserID = 6,
            },
            new OrderDetail{
                OrderDetailID = 1,
                Amount = 1,
                OrderID = 2,
                ProductID = 3,
                Quantity = 4,
                TotalAmount = 5,
                UserID = 6,
            },
            new OrderDetail{
                OrderDetailID = 1,
                Amount = 1,
                OrderID = 2,
                ProductID = 3,
                Quantity = 4,
                TotalAmount = 5,
                UserID = 6,
            },
            new OrderDetail{
                OrderDetailID = 1,
                Amount = 1,
                OrderID = 2,
                ProductID = 3,
                Quantity = 4,
                TotalAmount = 5,
                UserID = 6,
            },
            new OrderDetail{
                OrderDetailID = 1,
                Amount = 1,
                OrderID = 2,
                ProductID = 3,
                Quantity = 4,
                TotalAmount = 5,
                UserID = 6,
            }
        };
        public IActionResult Index()
        {
            return View(orderdetail);
        }

        public IActionResult OrderDetailAddEdit()
        {
            return View();
        }
    }
}
