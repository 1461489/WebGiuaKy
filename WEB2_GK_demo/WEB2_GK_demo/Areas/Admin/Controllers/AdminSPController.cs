using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WEB2_GK_demo.Areas.Admin.Controllers
{
    public class AdminSPController : Controller
    {
        // GET: Admin/AdminSP
        public ActionResult Index()
        {
            return View();
        }

        // GET: Admin/AdminSP/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/AdminSP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/AdminSP/Create
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

        // GET: Admin/AdminSP/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/AdminSP/Edit/5
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

        // GET: Admin/AdminSP/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/AdminSP/Delete/5
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
