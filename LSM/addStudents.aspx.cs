using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LSM
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection conn;
        String sem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!IsPostBack)
            {
                loadDepart();
            }
        }

        protected void loadDepart()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Department", conn);
            cmd.CommandType = CommandType.Text;
            ddDepart.DataSource = cmd.ExecuteReader();
            ddDepart.DataTextField = "departName";
            ddDepart.DataValueField = "departID";
            ddDepart.DataBind();
            ddDepart.Items.Insert(0, new ListItem("Select Department", "0"));
            conn.Close();
        }

        protected void ddDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            int DepartId = Convert.ToInt32(ddDepart.SelectedValue);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Class where departID=" + DepartId, conn);
            cmd.CommandType = CommandType.Text;
            ddClass.DataSource = cmd.ExecuteReader();
            ddClass.DataTextField = "className";
            ddClass.DataValueField = "classID";
            ddClass.DataBind();
            ddClass.Items.Insert(0, new ListItem("Select Class", "0"));
            conn.Close();
        }

        protected void ddClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ClassId = Convert.ToInt32(ddClass.SelectedValue);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Sem where classID=" + ClassId, conn);
            cmd.CommandType = CommandType.Text;
            ddSem.DataSource = cmd.ExecuteReader();
            ddSem.DataTextField = "semName";
            ddSem.DataValueField = "semID";
            ddSem.DataBind();
            ddSem.Items.Insert(0, new ListItem("Select Semister", "0"));
            conn.Close();
        }

        protected void ddSem_SelectedIndexChanged(object sender, EventArgs e)
        {
            sem = Convert.ToString(ddSem.SelectedItem).Replace(" ","") + DateTime.Now.Year.ToString();
            libmsg.Visible = true;
            libmsg.Text = sem;
        }

        protected void insertData(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO " + sem + " (Fname, Mname,Lname, Mobile, Email, Username, Password, Semid, SClass) VALUES (@Fname, @Mname, @Lname, @Mobile, @Email, @Username, @Password, @Semid, @SClass)", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Fname", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@Mname", txtMiddeletName.Text);
                cmd.Parameters.AddWithValue("@Lname", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text);
                cmd.Parameters.AddWithValue("@Email", txtMobileNo.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Semid", txtAdorGiNo.Text);
                cmd.Parameters.AddWithValue("@SClass", txtClass.Text);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("students.aspx");

                }
                conn.Close();

            }
            catch (Exception ex)
            {
                libmsg.Visible = true;
                libmsg.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uploadBulkStudent.aspx");
        }
    }
}