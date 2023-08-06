using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.AdminDashboard
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../login.aspx");
        }
    }
}