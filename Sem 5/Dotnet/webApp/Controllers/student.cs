using Microsoft.AspNetCore.Mvc;

namespace webApp.Controllers
{
    public class student : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
