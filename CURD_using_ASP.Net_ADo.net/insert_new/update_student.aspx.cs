using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace insert_new
{
    public partial class update_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; " +
                 "Initial Catalog=college;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student where rollno='"+ rollno.Text +"'" , con);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                rollno_edit.Text = reader.GetValue(1).ToString();
                sname.Text= reader.GetValue(2).ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; " +
                "Initial Catalog=college;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set sname='"+ sname.Text + "'" +
                " where rollno='"+ rollno.Text +"' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("view_student.aspx");
        }
    }
}