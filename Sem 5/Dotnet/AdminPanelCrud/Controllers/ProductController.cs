using AdminPanelCrud.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdminPanelCrud.Controllers
{
    public class ProductController : Controller
    {
        List<Product> products = new List<Product>()
        {
            new Product{ ProductID = 1, 
                ProductName = "Test",
                ProductCode = "Test",
                ProductPrice = 1,
                Description = "Test",
                UserID = 1,
            },
            new Product{ ProductID = 1,
                ProductName = "Test",
                ProductCode = "Test",
                ProductPrice = 1,
                Description = "Test",
                UserID = 1,
            },
            new Product{ ProductID = 1,
                ProductName = "Test",
                ProductCode = "Test",
                ProductPrice = 1,
                Description = "Test",
                UserID = 1,
            },
            new Product{ ProductID = 1,
                ProductName = "Test",
                ProductCode = "Test",
                ProductPrice = 1,
                Description = "Test",
                UserID = 1,
            },
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
