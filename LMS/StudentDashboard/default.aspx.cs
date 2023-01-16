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
        String dou;
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

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("usp_Tbl_Complaints_INSERT", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@grno", Session["gr"]);
            cmd.Parameters.AddWithValue("@name", Session["username"]);
            cmd.Parameters.AddWithValue("@subject", txtSub.Text);
            cmd.Parameters.AddWithValue("@message", txtMsg.Text);
            cmd.Parameters.AddWithValue("@replay", "No reply");
            conn.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                libmsg.Visible = true;
                libmsg.Text = "Message Sent Successfully";
                libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;

            }
            conn.Close();
            Response.Redirect("default.aspx");
        }
    }
}