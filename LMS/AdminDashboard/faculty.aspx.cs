using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMS.AdminDashboard
{
    public partial class WebForm3 : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("addFaculty.aspx");
        }

        protected void Gird_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}