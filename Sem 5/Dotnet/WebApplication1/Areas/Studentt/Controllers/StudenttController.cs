using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Areas.Student.Controllers
{
    public class StudenttController : Controller
    {
        [Area("Studentt")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
