using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.AdminDashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["id"] != null && Session["redirectedFrom"] != null)
                {
                    
                }
                else
                {
                    Response.Redirect("../adminLogin.aspx");
                }
            }
        }

        protected void AddDepart_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDept.aspx");
        }

        protected void AddClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("addClass.aspx");
        }

        protected void AddSem_Click(object sender, EventArgs e)
        {
            Response.Redirect("addSem.aspx");
        }

        protected void AddDiv_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDiv.aspx");
        }
    }
}