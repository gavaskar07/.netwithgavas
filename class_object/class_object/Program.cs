using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_object
{
    class Program
    {
        static void Main(string[] args)
        {
            amirtha_student gavas_stud = new amirtha_student();
           gavas_stud.name = "Gavaskar";
           gavas_stud.rollno = 5011;
            gavas_stud.amirtha_rollno = 1101;
            gavas_stud.display_detail();
            Console.ReadLine();
        }
    }
}
