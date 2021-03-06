﻿using MobileShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEB2_GK_demo.Models.BUS;

namespace WEB2_GK_demo.Areas.Admin.Controllers
{
    public class AdminLSPController : Controller
    {
        // GET: Admin/AdminLSP
        public ActionResult Index()
        {
            var sql = PhanLoaiBus.DanhSanhLSPAdmin();
            return View(sql);
        }

        // GET: Admin/AdminLSP/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/AdminLSP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/AdminLSP/Create
        [HttpPost]
        public ActionResult Create(LoaiSP LSP)
        {
            try
            {
                // TODO: Add insert logic here
                PhanLoaiBus.ThemLSP(LSP);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/AdminLSP/Edit/5
        public ActionResult Edit(String id)
        {
            var sql = PhanLoaiBus.EditLSP(id);
            return View(sql);
        }

        // POST: Admin/AdminLSP/Edit/5
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

        // GET: Admin/AdminLSP/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/AdminLSP/Delete/5
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
