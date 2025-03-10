using Lab.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab.Controllers
{
    public class UserController : Controller
    {
        public static List<User> users = new List<User>()
        {
            new User{
                UserID = 1,
                UserName = "Test",
                Address = "sdfsdf",
                Email = "madhav@gmail.com",
                Password = "123123123",
                MobileNo = "9485763218",
                isActive = true,
            },
            new User{
                UserID = 1,
                UserName = "Test",
                Address = "sdfsdf",
                Email = "madhav@gmail.com",
                Password = "123123123",
                MobileNo = "9485763218",
                isActive = true,
            },
            new User{
                UserID = 1,
                UserName = "Test",
                Address = "sdfsdf",
                Email = "madhav@gmail.com",
                Password = "123123123",
                MobileNo = "9485763218",
                isActive = true,
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
