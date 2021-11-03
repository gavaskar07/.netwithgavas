using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication4.Models;
namespace WebApplication4.Controllers
{
    public class HomeController : Controller
    {
        static IList<Student> studentList = new List<Student>{
                new Student() { StudentId = 1, StudentName = "Hari", Age = 18 } ,
                new Student() { StudentId = 2, StudentName = "RamuB",  Age = 25 } ,
                new Student() { StudentId = 4, StudentName = "Ram" , Age = 20 } ,
                new Student() { StudentId = 5, StudentName = "Ron" , Age = 31 } ,
                new Student() { StudentId = 4, StudentName = "Rob" , Age = 19 }
            };
        public ActionResult Index()
        {
            //return View();
            return View(studentList);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
          
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Newpage()
        {
            ViewBag.Message = "Your New page.";

            return View();
        }
    }
}