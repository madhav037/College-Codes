using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace AdminPanelCrud.Controllers
{
    [CheckAccess]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CreateCookie()
        {
            string Cookie_name = "cookieName";
            string cookie_value = "cookieValue";

            CookieOptions options = new CookieOptions
            {
                Expires = DateTime.Now.AddDays(2)
            };
            Response.Cookies.Append(Cookie_name, cookie_value, options);
            return View("Index"); 
        }

        public IActionResult ReadCookie()
        {
            string Cookie_name = "cookieName";
            var name = Request.Cookies[Cookie_name];
            Console.Write(name);
            return View("Index");
        }

        public IActionResult DeleteCookie()
        {
            string Cookie_name = "cookieName";
            string cookie_value = string.Empty;

            CookieOptions options = new CookieOptions
            {
                Expires = DateTime.Now.AddDays(-1)
            };
            Response.Cookies.Append(Cookie_name, cookie_value, options);
            return View("Index");
        }

    }
}
