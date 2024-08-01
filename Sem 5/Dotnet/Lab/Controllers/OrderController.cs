using Microsoft.AspNetCore.Mvc;

namespace Lab.Controllers
{
    public class OrderController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
