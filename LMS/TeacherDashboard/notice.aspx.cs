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

namespace LMS.TeacherDashboard
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Tid"] != null && Session["redirectedFrom"] != null)
                {
                    Session["redirectedFrom"] = "Dashboard";
                    loadDepart();
                    loadData("SELECT * FROM Tbl_Notice");
                }
                else
                {
                    Response.Redirect("../teacherLogin.aspx");
                }
            }
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

        protected void ddSem_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Tbl_Div where semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'", conn);
            cmd.CommandType = CommandType.Text;
            ddDiv.DataSource = cmd.ExecuteReader();
            ddDiv.DataTextField = "divName";
            ddDiv.DataValueField = "divId";
            ddDiv.DataBind();
            ddDiv.Items.Insert(0, new ListItem("Select Div", "0"));
            conn.Close();
        }

        protected void ddDiv_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
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
            loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview.EditIndex = e.NewEditIndex;
            loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int nId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string grNo = (row.Cells[2].Controls[0] as TextBox).Text;
                string title = (row.Cells[3].Controls[0] as TextBox).Text;
                string msg = (row.Cells[4].Controls[0] as TextBox).Text;
                string divName = (row.Cells[5].Controls[0] as TextBox).Text;
                string className = (row.Cells[6].Controls[0] as TextBox).Text;
                string semName = (row.Cells[7].Controls[0] as TextBox).Text;
                string depart = (row.Cells[8].Controls[0] as TextBox).Text;
                string staff = (row.Cells[9].Controls[0] as TextBox).Text;
                string date = (row.Cells[10].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Notice_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@noticeID", nId);
                cmd.Parameters.AddWithValue("@title", title);
                cmd.Parameters.AddWithValue("@msg", msg);
                cmd.Parameters.AddWithValue("@divname", divName);
                cmd.Parameters.AddWithValue("@classname", className);
                cmd.Parameters.AddWithValue("@semname", semName);
                cmd.Parameters.AddWithValue("@departname", depart);
                cmd.Parameters.AddWithValue("@byStaff", staff);
                cmd.Parameters.AddWithValue("@date", date);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");

            }
            catch (Exception ex)
            {

            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int nId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Notice_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@noticeID", nId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Notice WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void ClassSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_Notice_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@title", title.Text);
                cmd.Parameters.AddWithValue("@msg", description.Text);
                cmd.Parameters.AddWithValue("@divname", ddDiv.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@classname", ddClass.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@semname", ddSem.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@departname", ddDepart.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@byStaff", Session["Tid"]);
                cmd.Parameters.AddWithValue("@date", dateInput.Value);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("notice.aspx");

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