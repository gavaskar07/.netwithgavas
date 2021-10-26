using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_object
{
    class amirtha_student : student
    {
        public int amirtha_rollno;
        public void display_detail()
        {
            Console.WriteLine("The Roll No is {0}", rollno);
            Console.WriteLine("The Amirtha Roll No is {0}", amirtha_rollno);
            Console.WriteLine("The Name is {0}", name);
        }
    }
}
