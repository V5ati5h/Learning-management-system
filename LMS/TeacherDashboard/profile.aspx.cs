using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using static System.Net.Mime.MediaTypeNames;

namespace LMS.TeacherDashboard
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack) {
                if (Session["Tid"] != null && Session["redirectedFrom"] != null)
                {
                    Label1.Text = Session["Tid"].ToString();
                    loadData();
                }
                else
                {
                    Response.Redirect("../teacherLogin.aspx");
                }
            }
        }

        protected void loadData()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Tbl_Staff where username = @username", conn);
                cmd.Parameters.AddWithValue("@username", Label1.Text);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtdept.Text = dr["departId"].ToString();
                    txtdeptname.Text = dr["departName"].ToString();
                    txtfname.Text = dr["firstName"].ToString();
                    txtmname.Text = dr["middleName"].ToString();
                    txtlname.Text = dr["lastName"].ToString();
                    txtmobileno.Text = dr["mobile"].ToString();
                    txtemailaddress.Text = dr["email"].ToString();
                    txtusername.Text = dr["username"].ToString();
                    txtpassword.Text = dr["password"].ToString();
                }
                if (!(txtpassword.Text == "12345") && Session["redirectedFrom"].ToString() == "TeachLogin")
                {
                    Response.Redirect("default.aspx");
                }
                dr.Close();
                conn.Close();
            }
            catch (Exception ex)
            {
                libmsg.Text = ex.Message;
                libmsg.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update Tbl_Staff set firstName='" + txtfname.Text  + "', middleName='" + txtmname.Text + "', lastName='" + txtlname.Text + "', mobile='" + txtmobileno.Text + "', email='" + txtemailaddress.Text  + "' , password='" + txtpassword.Text + "' where username='" + Label1.Text + "'", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Session.Abandon();
                Response.Redirect("../teacherLogin.aspx");
            }
            catch (Exception ex)
            {
                libmsg.Text = ex.Message;
                libmsg.Visible = true;
            }
        }
    }
}