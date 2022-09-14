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
                if (Session["id"] != null)
                {
                    Label1.Text = Session["id"].ToString();
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
                SqlCommand cmd = new SqlCommand("select * from Tbl_Faculty where Username = @Username", conn);
                cmd.Parameters.AddWithValue("@Username", Label1.Text);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtdept.Text = dr["did"].ToString();
                    txtdeptname.Text = dr["deptname"].ToString();
                    txtfname.Text = dr["Fname"].ToString();
                    txtmname.Text = dr["Mname"].ToString();
                    txtlname.Text = dr["Lname"].ToString();
                    txtmobileno.Text = dr["Mobile"].ToString();
                    txtemailaddress.Text = dr["Email"].ToString();
                    txtusername.Text = dr["Username"].ToString();
                    txtpassword.Text = dr["Password"].ToString();
                }
                if (!(txtpassword.Text == "12345") && Session["redirectedFrom"].ToString() == "Login")
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
                SqlCommand cmd = new SqlCommand("update Tbl_Faculty set Fname='" + txtfname.Text  + "', Mname='" + txtmname.Text + "', Lname='" + txtlname.Text + "', Mobile='" + txtmobileno.Text + "', Email='" + txtemailaddress.Text  + "' , Password='" + txtpassword.Text + "' where Username='" + Label1.Text + "'", conn);
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