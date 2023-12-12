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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Aid"] != null && Session["redirectedFrom"] != null)
                {
                    loadDepart();
                    loadData("SELECT * FROM Tbl_Div");
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

        protected void loadDepart()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Tbl_depart", conn);
            cmd.CommandType = CommandType.Text;
            ddDepart.DataSource = cmd.ExecuteReader();
            ddDepart.DataTextField = "departName";
            ddDepart.DataValueField = "departId";
            ddDepart.DataBind();
            ddDepart.Items.Insert(0, new ListItem("Select Department", "0"));
            conn.Close();
        }

        protected void ddDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Tbl_Class where departName=" + "'" + ddDepart.SelectedItem + "'", conn);
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
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Tbl_Sem where className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'", conn);
            cmd.CommandType = CommandType.Text;
            ddSem.DataSource = cmd.ExecuteReader();
            ddSem.DataTextField = "semName";
            ddSem.DataValueField = "semId";
            ddSem.DataBind();
            ddSem.Items.Insert(0, new ListItem("Select Semister", "0"));
            conn.Close();
        }

        protected void DivSubmit_Click(object sender, EventArgs e)
        {
            if (ddDepart.SelectedItem.ToString() == "" && ddClass.SelectedItem.ToString() == "" && ddSem.SelectedItem.ToString() == "" && CDiv.Text == null && CDivSeats.Text == null)
            {
                Response.Write("<script>alert('Cannot enter empty value');</script>");
            } else
            {

                try
                {
                    SqlCommand cmd = new SqlCommand("usp_Tbl_Div_INSERT", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@divName", CDiv.Text);
                    cmd.Parameters.AddWithValue("@seat", CDivSeats.Text);
                    cmd.Parameters.AddWithValue("@semName", ddSem.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@className", ddClass.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@departName", ddDepart.SelectedItem.ToString());
                    conn.Open();
                    int k = cmd.ExecuteNonQuery();
                    if (k != 0)
                    {
                        libmsg.Visible = true;
                        libmsg.Text = "Record Insert Successfully into the Database";
                        libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                        Response.Redirect("addDiv.aspx");

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
            loadData("SELECT * FROM Tbl_Div");
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview.EditIndex = e.NewEditIndex;
            loadData("SELECT * FROM Tbl_Div");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int dId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string seat = (row.Cells[2].Controls[0] as TextBox).Text;
                string divname = (row.Cells[3].Controls[0] as TextBox).Text;
                string semname = (row.Cells[4].Controls[0] as TextBox).Text;
                string className = (row.Cells[5].Controls[0] as TextBox).Text;
                string departName = (row.Cells[6].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Div_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dId", dId);
                cmd.Parameters.AddWithValue("@seat", seat);
                cmd.Parameters.AddWithValue("@divName", divname);
                cmd.Parameters.AddWithValue("@semName", semname);
                cmd.Parameters.AddWithValue("@className", className);
                cmd.Parameters.AddWithValue("@departName", departName);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_Div");

            }
            catch (Exception ex)
            {
                libmsg.Visible = true;
                libmsg.Text = ex.Message;
            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_Div");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int dId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Div_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@dId", dId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Div");
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