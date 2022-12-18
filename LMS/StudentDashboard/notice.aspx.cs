using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Reflection.Emit;

namespace LMS.StudentDashboard
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
                    Session["redirectedFrom"] = "Dashboard";
                    loadData("SELECT * FROM Tbl_Notice where " + "divName='" + Session["divName"] + "'" + "and ClassName='" + Session["className"] + "'" + "and SemName='" + Session["semName"] + "'" + " and DepartName='" + Session["dipartName"] + "'");
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
        }

        protected void loadData(string queary)
        {
            SqlCommand cmd = new SqlCommand(queary, conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            SqlDataAdapter dsa = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dsa.Fill(dt);
            gridview.DataSource = dt;
            gridview.DataBind();
            conn.Close();
        }
    }
}