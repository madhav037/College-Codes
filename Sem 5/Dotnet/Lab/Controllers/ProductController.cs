using Lab.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab.Controllers
{
    public class ProductController : Controller
    {
        public static List<Product> products = new List<Product>()
        {
            new Product{
                ProductID = 1,
            ProductName = "Test",
            ProductCode = "Test",
            ProductPrice = 199,
            Description = "Test",
            UserID = 1 },
             new Product{
                ProductID = 1,
            ProductName = "Test",
            ProductCode = "Test",
            ProductPrice = 199,
            Description = "Test",
            UserID = 1 },
              new Product{
                ProductID = 1,
            ProductName = "Test",
            ProductCode = "Test",
            ProductPrice = 199,
            Description = "Test",
            UserID = 1 },
        };



        public IActionResult Index()
        {
            return View(products);
        }

        public IActionResult ProductAddEdit()
        {
            return View();
        }
    }
}
