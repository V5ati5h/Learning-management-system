using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.TeacherDashboard
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    Session["redirectedFrom"] = "Dashboard";
                }
                else
                {
                    Response.Redirect("../teacherLogin.aspx");
                }
            }
        }
    }
}