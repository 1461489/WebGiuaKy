using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEB2_GK_demo.Models.BUS;

namespace WEB2_GK_demo.Controllers
{
    public class PhanLoaiController : Controller
    {
        // GET: Phanloai
        public ActionResult Index(String id, int PagedList = 1, int size = 6)
        {
            var sql = PhanLoaiBus.ChiTietPL(id).ToPagedList(PagedList, size);
            return View(sql);

        }
    }

}