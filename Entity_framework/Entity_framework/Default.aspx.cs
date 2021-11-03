using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity_framework
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        void BindGrid()
        {
            using (collegeEntities1 context = new collegeEntities1())
            {
                if (context.students.Count() > 0)
                {
                    GVStudent.DataSource = (from st in context.students
                                             select new { st.id, st.rollno, st.sname}).ToList();
                    GVStudent.DataBind();
                }
                else
                {
                    GVStudent.DataSource = null;
                    GVStudent.DataBind();
                }
            }
        }
        protected void GVStudent_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GVStudent.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GVStudent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "InsertNew")
            {
                GridViewRow row = GVStudent.FooterRow;

                TextBox txtrollno = row.FindControl("txtrollnonew") as TextBox;
                TextBox txtname = row.FindControl("txtsnamenew") as TextBox;

                using (collegeEntities1 context = new collegeEntities1())
                {
                    student obj = new student();
                    obj.rollno = txtrollno.Text;
                    obj.sname = txtname.Text;
                    context.students.Add(obj);
                    context.SaveChanges();
                    BindGrid();
                }

            }
        }
        protected void GVStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVStudent.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void GVStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVStudent.EditIndex = -1;
            BindGrid();
        }
        protected void GVStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GVStudent.Rows[e.RowIndex];
            TextBox txtrollno = row.FindControl("txtrollno") as TextBox;
            TextBox txtname = row.FindControl("txtsname") as TextBox;
           


            using (collegeEntities1 context = new collegeEntities1())
            {
                int id = Convert.ToInt32(GVStudent.DataKeys[e.RowIndex].Value);
                student obj = context.students.First(x => x.id == id);
                obj.rollno = txtrollno.Text;
                obj.sname = txtname.Text;
                context.SaveChanges();
                GVStudent.EditIndex = -1;
                BindGrid();
            }

        }

        protected void GVStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GVStudent.DataKeys[e.RowIndex].Value);
            using (collegeEntities1 context = new collegeEntities1())
            {
                student obj = context.students.First(x => x.id == id);
                context.students.Remove(obj);
                context.SaveChanges();
                BindGrid();
            }
        }
    }
}