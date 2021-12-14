using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity_stud
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
            using (student_dbEntities1 context = new student_dbEntities1())
            {
                if (context.registrations.Count() > 0)
                {
                    gvstudent.DataSource = (from st in context.registrations
                                            select new { st.id, st.sname, st.gender,st.bgroup,st.address }).ToList();
                    gvstudent.DataBind();
                }
                else
                {
                    gvstudent.DataSource = null;
                    gvstudent.DataBind();
                }
            }
        }
        protected void GVStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
           gvstudent.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void GVStudent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "InsertNew")
            {
                GridViewRow row = gvstudent.FooterRow;

                TextBox txtsname = row.FindControl("sname1") as TextBox;
                TextBox txtgender = row.FindControl("gender1") as TextBox;
                TextBox txtbgroup = row.FindControl("bgroup1") as TextBox;
                TextBox txtaddress = row.FindControl("address1") as TextBox;
                using (student_dbEntities1 context = new student_dbEntities1())
                {
                   registration obj = new registration();
                    obj.sname = txtsname.Text;
                    obj.gender = txtgender.Text;
                    obj.bgroup = txtbgroup.Text;
                    obj.address= txtaddress.Text;
                    context.registrations.Add(obj);
                    context.SaveChanges();
                    BindGrid();
                }

            }
            

        }
        protected void GVStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvstudent.Rows[e.RowIndex];
            TextBox txtsname = row.FindControl("sname") as TextBox;
            TextBox txtgender = row.FindControl("gender") as TextBox;
            TextBox txtbgroup = row.FindControl("bgroup") as TextBox;
            TextBox txtaddress = row.FindControl("address") as TextBox;
            using (student_dbEntities1 context = new student_dbEntities1())
            {
                
                int id = Convert.ToInt32(gvstudent.DataKeys[e.RowIndex].Value);
                registration obj = context.registrations.First(x => x.id == id);
                obj.sname = txtsname.Text;
                obj.gender = txtgender.Text;
                obj.bgroup = txtbgroup.Text;
                obj.address = txtaddress.Text;
                context.SaveChanges();
                gvstudent.EditIndex = -1;
                BindGrid();
            }
        }
        protected void GVStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvstudent.DataKeys[e.RowIndex].Value);
            using (student_dbEntities1 context = new student_dbEntities1())
            {
                registration obj = context.registrations.First(x => x.id == id);
                context.registrations.Remove(obj);
                context.SaveChanges();
                BindGrid();
            }
        }
        protected void GVStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvstudent.EditIndex = -1;
            BindGrid();
        }
    }
}