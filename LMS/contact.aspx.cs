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

namespace LMS
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("usp_Tbl_Contact_INSERT", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mob", TextBox3.Text);
            cmd.Parameters.AddWithValue("@msg", TextBox4.Text);
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
    }
}