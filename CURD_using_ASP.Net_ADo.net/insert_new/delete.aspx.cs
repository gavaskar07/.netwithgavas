using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace insert_new
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; " +
                "Initial Catalog=college;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM student where " +
                "rollno='"+ rollno.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("view_student.aspx");
        }
    }
}