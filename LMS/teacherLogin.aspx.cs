using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LMS
{
    public partial class WebForm6 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from Tbl_Faculty where Username = @Username and password = @password", conn);
                cmd.Parameters.AddWithValue("@Username", txtlogusername.Text);
                cmd.Parameters.AddWithValue("@password", txtlogpassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                conn.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["id"] = txtlogusername.Text;
                    Session["redirectedFrom"] = "Login";
                    Response.Redirect("./TeacherDashboard/profile.aspx");
                }
                else
                {
                    libmsg.Visible = true;
                    libmsg.Text = "You're username or password is incorrect";
                    libmsg.ForeColor = System.Drawing.Color.Red;
                }

            }
            catch (Exception ex)
            {
                libmsg.Visible = true;
                libmsg.Text = ex.Message;
            }
        }
    }
}