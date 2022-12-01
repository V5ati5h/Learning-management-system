using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LMS.AdminDashboard
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["id"] != null && Session["redirectedFrom"] != null)
                {
                    loadData("select * from Tbl_Leave");
                }
                else
                {
                    Response.Redirect("../adminLogin.aspx");
                }
            }
        }

        protected void ddMain_SelectedIndexChanged(object sender, EventArgs e)
        {
            String dou;
            if (ddMain.SelectedIndex == 0)
            {
                dou = "select * from Tbl_Leave";
            }
            else
            {
                dou = "select * from Tbl_Leave where reply=" + "'" + ddMain.SelectedItem + "'";
            }
            loadData(dou);
        }

        protected void loadData(string queary)
        {
            SqlCommand cmd = new SqlCommand(queary, conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            SqlDataAdapter dsa = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dsa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }
    }
}