using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class CustomerController : Controller
    {
        List<Customer> customers = new List<Customer>()
        {
            new Customer{ 
                CityName = "Rajkot",
                CustomerID = 1,
                CustomerName = "Shruti",
                Email = "shrut@gmail.com",
                GSTNO = "dsvnlkd",
                HomeAddress = "dsnndvn",
                MobileNo = "1234567890",
                NetAmount = 23,
                PinCode = "360006",
                UserID = 1,
            },
            new Customer{
                CityName = "Rajkot",
                CustomerID = 1,
                CustomerName = "Shruti",
                Email = "shrut@gmail.com",
                GSTNO = "dsvnlkd",
                HomeAddress = "dsnndvn",
                MobileNo = "1234567890",
                NetAmount = 23,
                PinCode = "360006",
                UserID = 1,
            },
            new Customer{
                CityName = "Rajkot",
                CustomerID = 1,
                CustomerName = "Shruti",
                Email = "shrut@gmail.com",
                GSTNO = "dsvnlkd",
                HomeAddress = "dsnndvn",
                MobileNo = "1234567890",
                NetAmount = 23,
                PinCode = "360006",
                UserID = 1,
            },
            new Customer{
                CityName = "Rajkot",
                CustomerID = 1,
                CustomerName = "Shruti",
                Email = "shrut@gmail.com",
                GSTNO = "dsvnlkd",
                HomeAddress = "dsnndvn",
                MobileNo = "1234567890",
                NetAmount = 23,
                PinCode = "360006",
                UserID = 1,
            },
            new Customer{
                CityName = "Rajkot",
                CustomerID = 1,
                CustomerName = "Shruti",
                Email = "shrut@gmail.com",
                GSTNO = "dsvnlkd",
                HomeAddress = "dsnndvn",
                MobileNo = "1234567890",
                NetAmount = 23,
                PinCode = "360006",
                UserID = 1,
            },
        };
        public IActionResult Index()
        {
            return View(customers);
        }
        public IActionResult CustomerAddEdit()
        {
            return View();
        }
    }
}
