using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_object
{
    public class student
    {
        public int rollno;
        public string name;
        public void display_detail()
        {
            Console.WriteLine("The Roll No is {0}", rollno);
            Console.WriteLine("The Name is {0}", name);
        }
        public void display_detail(String name1)
        {
            Console.WriteLine("The Roll No is {0}", rollno);
            Console.WriteLine("The Name is {0}", name1);
        }
        public student()
        {
            rollno = 5012;
            name = "Hari";
        }
        public student(int rollno1,string name1)
        {
            rollno =rollno1;
            name = name1;
        }
    }
}
