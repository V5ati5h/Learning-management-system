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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
        }

        protected string login(string who)
        {
            string qu = "select * from " + who +" where Username = @Username and password = @password";
            SqlCommand cmd = new SqlCommand(qu, conn);
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
                return "yes";
            }
            else
            {
                return "no";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtlogpassword.Text != "" && txtlogusername.Text != "")
            {
                if (txtlogusername.Text != "")
                {
                    if (txtlogpassword.Text != "")
                    {
                        try
                        {
                            if (login("Tbl_Student") == "yes")
                            {
                                Session["id"] = txtlogusername.Text;
                                Session["redirectedFrom"] = "Login";
                                Response.Redirect("./StudentDashboard/profile.aspx");
                            }
                            else if (login("Tbl_Staff") == "yes")
                            {
                                Session["Tid"] = txtlogusername.Text;
                                Session["redirectedFrom"] = "TeachLogin";
                                Response.Redirect("./TeacherDashboard/profile.aspx");
                            }
                            else if (login("Tbl_Admin") == "yes")
                            {
                                Session["Aid"] = txtlogusername.Text;
                                Session["redirectedFrom"] = "AdminLogin";
                                Response.Redirect("./AdminDashboard/Default.aspx");
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
                            libmsg.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        libmsg.Visible = true;
                        libmsg.Text = "Password can not be empty";
                        libmsg.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Username can not be empty";
                    libmsg.ForeColor = System.Drawing.Color.Red;
                }
            } else {
                libmsg.Visible = true;
                libmsg.Text = "Username and password can not be empty";
                libmsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}