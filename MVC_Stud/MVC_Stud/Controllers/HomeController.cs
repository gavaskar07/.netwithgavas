
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_Stud.Controllers
{
    public class HomeController : Controller
    {
        // DB_context = new TutorialsCS()
        student_dbEntities _context = new student_dbEntities();
        //public ActionResult Index()
        //{
        //    return View();
        //}

        //public ActionResult About()
        //{
        //    ViewBag.Message = "Your application description page.";

        //    return View();
        //}

        //public ActionResult Contact()
        //{
        //    ViewBag.Message = "Your contact page.";

        //    return View();
        //}
        public ActionResult Index()
        {
            var listofData = _context.registrations.ToList();
            return View(listofData);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(registration model)
        {
            _context.registrations.Add(model);
            _context.SaveChanges();
            ViewBag.Message = "Data Insert Successfully";
            return View();
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var data = _context.registrations.Where(x => x.id== id).FirstOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(registration Model)
        {
            var data = _context.registrations.Where(x => x.id == Model.id).FirstOrDefault();
            if (data != null)
            {
                data.sname= Model.sname;
                data.gender = Model.gender;
                data.bgroup = Model.bgroup;
                data.address = Model.address;
                _context.SaveChanges();
            }

            return RedirectToAction("index");
        }
        public ActionResult Detail(int id)
        {
            var data = _context.registrations.Where(x => x.id== id).FirstOrDefault();
            return View(data);
        }
        public ActionResult Delete(int id)
        {
            var data = _context.registrations.Where(x => x.id == id).FirstOrDefault();
            _context.registrations.Remove(data);
            _context.SaveChanges();
            ViewBag.Messsage = "Record Delete Successfully";
            return RedirectToAction("index");
        }
    }
}