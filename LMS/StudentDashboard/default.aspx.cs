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
                    loadData("select * from Tbl_Leave");
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
        }

        protected void loadData(string queary)
        {
            SqlCommand cmd = new SqlCommand(queary, conn);
            conn.Open();
            SqlDataAdapter dsa = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dsa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
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

        protected void ddMain_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddMain.SelectedIndex == 0)
            {
                dou = "select * from Tbl_Leave";
            }
            else
            {
                dou = "select * from Tbl_Leave where reply=" + "'" + ddMain.SelectedItem + "'";
            }
            loadData(dou);
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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("usp_Tbl_Leave_INSERT", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@grNo", Session["gr"]);
            cmd.Parameters.AddWithValue("@fName", Session["firstName"]);
            cmd.Parameters.AddWithValue("@mName", Session["middleName"]);
            cmd.Parameters.AddWithValue("@lName", Session["lastName"]);
            cmd.Parameters.AddWithValue("@divName", Session["divName"]);
            cmd.Parameters.AddWithValue("@semName", Session["semName"]);
            cmd.Parameters.AddWithValue("@className", Session["className"]);
            cmd.Parameters.AddWithValue("@departName", Session["dipartName"]);
            cmd.Parameters.AddWithValue("@message", txtMess.Text);
            cmd.Parameters.AddWithValue("@nodays", txtNoOfDays.Text);
            cmd.Parameters.AddWithValue("@replay", "No reply");
            conn.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                libmsg.Visible = true;
                libmsg.Text = "Sent Successfully";
                libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;

            }
            conn.Close();
        }
    }
}