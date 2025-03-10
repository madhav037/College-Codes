using Microsoft.AspNetCore.Mvc;

namespace audiproj.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
