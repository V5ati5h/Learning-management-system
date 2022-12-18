using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Reflection.Emit;

namespace LMS.StudentDashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["id"] != null && Session["redirectedFrom"] != null)
                {
                    Session["redirectedFrom"] = "Dashboard";
                    totalPresent.Text = loadkar("Present");
                    totalAbesnt.Text = loadkar("Absent");
                    totalLeave.Text = loadkar("Leave");
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
        }

        protected String loadkar(String status)
        {
            String tect;
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Tbl_Attandance where status=@status and " + "grNo='" + Session["gr"] + "'", conn);
            cmd.Parameters.AddWithValue("@status", status);
            tect = Convert.ToString(cmd.ExecuteScalar());
            conn.Close();
            return tect;
        }
    }
}