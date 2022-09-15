using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LMS.AdminDashboard
{
    public partial class WebForm8 : System.Web.UI.Page
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

        protected void DepartSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_Department_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@departmentName", Cdisc.Text);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("addDept.aspx");

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