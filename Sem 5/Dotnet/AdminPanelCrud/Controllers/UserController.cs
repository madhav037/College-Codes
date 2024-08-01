using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class UserController : Controller
    {

        List<User> users = new List<User>() {
            new Models.User{
                UserID = 1,
                UserName = "Shruti",
                Email = "shrut@gmail.com",
                Password = "password",
                Address = "address",
                MobileNo = "1234",
                IsActive = true,
            },

            new Models.User{
                UserID = 1,
                UserName = "Shruti",
                Email = "shrut@gmail.com",
                Password = "password",
                Address = "address",
                MobileNo = "1234",
                IsActive = true,
            },

            new Models.User{
                UserID = 1,
                UserName = "Shruti",
                Email = "shrut@gmail.com",
                Password = "password",
                Address = "address",
                MobileNo = "1234",
                IsActive = true,
            },

            new Models.User{
                UserID = 1,
                UserName = "Shruti",
                Email = "shrut@gmail.com",
                Password = "password",
                Address = "address",
                MobileNo = "1234",
                IsActive = true,
            },

            new Models.User{
                UserID = 1,
                UserName = "Shruti",
                Email = "shrut@gmail.com",
                Password = "password",
                Address = "address",
                MobileNo = "1234",
                IsActive = true,
            },

        };
        public IActionResult Index()
        {
            return View(users);
        }

        public IActionResult UserAddEdit()
        {
            return View();
        }
    }
}
