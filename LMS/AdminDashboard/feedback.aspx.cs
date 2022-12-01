using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.AdminDashboard
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
}