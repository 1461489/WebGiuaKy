using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WEB2_GK_demo.Areas.Admin.Controllers
{
    public class AdminNSXController : Controller
    {
        // GET: Admin/AdminNSX
        public ActionResult Index()
        {
            return View();
        }

        // GET: Admin/AdminNSX/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/AdminNSX/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/AdminNSX/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/AdminNSX/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/AdminNSX/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/AdminNSX/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/AdminNSX/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
