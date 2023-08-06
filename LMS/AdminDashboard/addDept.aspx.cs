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
                if (Session["Aid"] != null && Session["redirectedFrom"] != null)
                {
                    loadData("SELECT * FROM Tbl_Depart");
                }
                else
                {
                    Response.Redirect("../login.aspx");
                }
            }
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

        protected void DepartSubmit_Click(object sender, EventArgs e)
        {
            if (Cdisc.Text == null)
            {

            }
            else
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_Tbl_Depart_INSERT", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@departName", Cdisc.Text);
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
            loadData("SELECT * FROM Tbl_Depart");
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview.EditIndex = e.NewEditIndex;
            loadData("SELECT * FROM Tbl_Depart");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int dId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string departName = (row.Cells[2].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Depart_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dId", @dId);
                cmd.Parameters.AddWithValue("@departName", departName);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_Depart");

            }
            catch (Exception ex)
            {

            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_Depart");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int dId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Depart_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@dId", dId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Depart");
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