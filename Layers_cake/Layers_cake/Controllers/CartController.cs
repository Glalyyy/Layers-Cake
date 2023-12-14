using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Layers_cake.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Cart()
        {
            return View();
        }
        public ActionResult Thongtin()
        {
            return View();
        }
        public ActionResult Payment()
        {
            return View();
        }
        public ActionResult Thankyou()
        {
            return View();
        }
    }
}