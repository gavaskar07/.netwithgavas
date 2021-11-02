using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace insert_new
{
    public partial class view_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; " +
                "Initial Catalog=college;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student", con);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
          }
    }
}