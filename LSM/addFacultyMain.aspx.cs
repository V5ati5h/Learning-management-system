using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LSM
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_faculty", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Fname", txtfname.Text);
                cmd.Parameters.AddWithValue("@Mname", txtmname.Text);
                cmd.Parameters.AddWithValue("@Lname", txtlname.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtmobileno.Text);
                cmd.Parameters.AddWithValue("@Email", txtemailaddress.Text);
                cmd.Parameters.AddWithValue("@Username", txtusername.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@Did", txtdept.Text);
                cmd.Parameters.AddWithValue("@DName", txtdeptname.Text);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("superAdminDashboard.aspx");

                }
                conn.Close();

            }
            catch (Exception ex)
            {
                libmsg.Visible = true;
                libmsg.Text = ex.Message;
            }
        }
    }
}