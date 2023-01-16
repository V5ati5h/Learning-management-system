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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (Session["Aid"] != null && Session["redirectedFrom"] != null)
            {
                loadData("SELECT * FROM Tbl_Contact");
            }
            else
            {
                Response.Redirect("../adminLogin.aspx");
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

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridview.PageIndex = e.NewPageIndex;
            loadData("SELECT * FROM Tbl_Contact");
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int dId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Contact_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@contactId", dId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Contact");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
            {
                (e.Row.Cells[0].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
    }
}