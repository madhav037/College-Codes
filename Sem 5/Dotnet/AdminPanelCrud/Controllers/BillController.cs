using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class BillController : Controller
    {
        List<Bill> bills = new List<Bill> { 
            new Bill{ 
                UserID = 1,
                TotalAmount = 0,
                BillDate = DateTime.Now,
                BillID = 1,
                BillNumber = "dbvhd",
                Discount = 0,
                NetAmount = 0,
                OrderID = 0
            },
            new Bill{
                UserID = 1,
                TotalAmount = 0,
                BillDate = DateTime.Now,
                BillID = 1,
                BillNumber = "dbvhd",
                Discount = 0,
                NetAmount = 0,
                OrderID = 0
            },
            new Bill{
                UserID = 1,
                TotalAmount = 0,
                BillDate = DateTime.Now,
                BillID = 1,
                BillNumber = "dbvhd",
                Discount = 0,
                NetAmount = 0,
                OrderID = 0
            },
            new Bill{
                UserID = 1,
                TotalAmount = 0,
                BillDate = DateTime.Now,
                BillID = 1,
                BillNumber = "dbvhd",
                Discount = 0,
                NetAmount = 0,
                OrderID = 0
            },
            new Bill{
                UserID = 1,
                TotalAmount = 0,
                BillDate = DateTime.Now,
                BillID = 1,
                BillNumber = "dbvhd",
                Discount = 0,
                NetAmount = 0,
                OrderID = 0
            },
        };
        public IActionResult Index()
        {
            return View(bills);
        }

        public IActionResult BillAddEdit()
        {
            return View();
        }
    }
}
