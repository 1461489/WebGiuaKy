using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEB2_GK_demo.Models.BUS;

namespace WEB2_GK_demo.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(String id , int PagedList = 1, int size = 3)
        {
            var sql = NhaSanXuatBus.ChiTiet(id).ToPagedList(PagedList, size);
            return View(sql);
           
        }
    }
}