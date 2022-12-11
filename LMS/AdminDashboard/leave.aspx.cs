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
        String dou;
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
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            loadData(dou);
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = GridView1.Rows[e.RowIndex];
                int leaveId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string grNo = (row.Cells[2].Controls[0] as TextBox).Text;
                string firstName = (row.Cells[3].Controls[0] as TextBox).Text;
                string middleName = (row.Cells[4].Controls[0] as TextBox).Text;
                string lastName = (row.Cells[5].Controls[0] as TextBox).Text;
                string divName = (row.Cells[6].Controls[0] as TextBox).Text;
                string className = (row.Cells[7].Controls[0] as TextBox).Text;
                string semName = (row.Cells[8].Controls[0] as TextBox).Text;
                string depart = (row.Cells[9].Controls[0] as TextBox).Text;
                string message = (row.Cells[10].Controls[0] as TextBox).Text;
                string noDays = (row.Cells[11].Controls[0] as TextBox).Text;
                string reply = (row.Cells[12].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Leave_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@leaveId", leaveId);
                cmd.Parameters.AddWithValue("@grNo", grNo);
                cmd.Parameters.AddWithValue("@rollNo", firstName);
                cmd.Parameters.AddWithValue("@fName", middleName);
                cmd.Parameters.AddWithValue("@mName", lastName);
                cmd.Parameters.AddWithValue("@lName", divName);
                cmd.Parameters.AddWithValue("@divName", className);
                cmd.Parameters.AddWithValue("@semName", semName);
                cmd.Parameters.AddWithValue("@departName", depart);
                cmd.Parameters.AddWithValue("@message", message);
                cmd.Parameters.AddWithValue("@nodays", depart);
                cmd.Parameters.AddWithValue("@reply", reply);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                GridView1.EditIndex = -1;
                loadData(dou);

            }
            catch (Exception ex)
            {

            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            loadData(dou);
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int leaveId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Feedback_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@@feedBackId", leaveId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData(dou);
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
    }
}