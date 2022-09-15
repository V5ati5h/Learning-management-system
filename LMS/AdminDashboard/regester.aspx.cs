using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LMS.AdminDashboard
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
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
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Admin", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", txtadminusername.Text);
                cmd.Parameters.AddWithValue("@password", txtadminpassword.Text);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("defaultSuperAdmin.aspx");

                }
                conn.Close();

            }
            catch (Exception ex)
            {
                libmsg.Visible = true;
                libmsg.Text = ex.Message;
            }
        }

        protected void SAButtonreg_Click(object sender, EventArgs e)
        {

        }
    }
}