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

namespace LMS.StudentDashboard
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["id"] != null && Session["redirectedFrom"] != null)
                {
                    Label1.Text = Session["id"].ToString();
                    loadData();
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
        }

        protected void loadData()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Tbl_Student where username = @username", conn);
                cmd.Parameters.AddWithValue("@username", Label1.Text);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtGr.Text = dr["grNo"].ToString();
                    txtRoll.Text = dr["rollNo"].ToString();
                    txtfname.Text = dr["firstName"].ToString();
                    txtmname.Text = dr["middleName"].ToString();
                    txtlname.Text = dr["lastName"].ToString();
                    txtDiv.Text = dr["divName"].ToString();
                    txtClass.Text = dr["className"].ToString();
                    txtSem.Text = dr["semName"].ToString();
                    txtdept.Text = dr["departName"].ToString();
                    txtmobileno.Text = dr["mobile"].ToString();
                    txtemailaddress.Text = dr["email"].ToString();
                    txtDob.Value = dr["dateOfBirth"].ToString();
                    txtusername.Text = dr["username"].ToString();
                    txtpassword.Text = dr["password"].ToString();
                    Session["gr"] = txtGr.Text;
                    Session["firstName"] = txtfname.Text;
                    Session["middleName"] = txtmname.Text;
                    Session["lastName"] = txtlname.Text;
                    Session["username"] = txtusername.Text;
                    Session["divName"] = txtDiv.Text;
                    Session["semName"] = txtSem.Text;
                    Session["className"] = txtClass.Text;
                    Session["dipartName"] = txtdept.Text;
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
                SqlCommand cmd = new SqlCommand("update Tbl_Student set firstName='" + txtfname.Text + "', middleName='" + txtmname.Text + "', lastName='" + txtlname.Text + "', mobile='" + txtmobileno.Text + "', email='" + txtemailaddress.Text + "' , password='" + txtpassword.Text + "' where username='" + Label1.Text + "'", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
            catch (Exception ex)
            {
                libmsg.Text = ex.Message;
                libmsg.Visible = true;
            }
        }
    }
}