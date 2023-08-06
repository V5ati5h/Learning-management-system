using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using static System.Net.Mime.MediaTypeNames;
using System.Reflection;
using System.Web.Services.Description;

namespace LMS.AdminDashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Aid"] != null && Session["redirectedFrom"] != null)
                {

                    loadData("SELECT * FROM Tbl_Complaints");
                    totalFeed.Text = loadkar("Tbl_Contact");
                    totalStud.Text = loadkar("Tbl_Student");
                    totalStaf.Text = loadkar("Tbl_Staff");
                    totalComp.Text = loadkar("Tbl_Complaints");
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
        }

        protected String loadkar(String txt)
        {
            String tect;
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM " + txt , conn);
            tect = Convert.ToString(cmd.ExecuteScalar());
            conn.Close();
            return tect;
        }

        protected void AddDepart_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDept.aspx");
        }

        protected void AddClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("addClass.aspx");
        }

        protected void AddSem_Click(object sender, EventArgs e)
        {
            Response.Redirect("addSem.aspx");
        }

        protected void AddDiv_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDiv.aspx");
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

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview.EditIndex = e.NewEditIndex;
            loadData("SELECT * FROM Tbl_Complaints");
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridview.PageIndex = e.NewPageIndex;
            loadData("SELECT * FROM Tbl_Complaints");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int complainId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string grno = (row.Cells[2].Controls[0] as TextBox).Text;
                string name = (row.Cells[3].Controls[0] as TextBox).Text;
                string subject = (row.Cells[4].Controls[0] as TextBox).Text;
                string message = (row.Cells[5].Controls[0] as TextBox).Text;
                string replay = (row.Cells[6].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Complaints_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@complainId", complainId);
                cmd.Parameters.AddWithValue("@grNo", grno);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@subject", subject);
                cmd.Parameters.AddWithValue("@message", message);
                cmd.Parameters.AddWithValue("@replay", replay);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_Complaints");

            }
            catch (Exception ex)
            {

            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_Complaints");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int complainId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Student_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@complainId", complainId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Complaints");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
    }
}