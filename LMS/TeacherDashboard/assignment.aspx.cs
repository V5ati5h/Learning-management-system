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
using System.Net;

namespace LMS.TeacherDashboard
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Tid"] != null && Session["redirectedFrom"] != null)
                {
                    loadDepart();
                    Session["redirectedFrom"] = "Dashboard";
                    loadData("SELECT * FROM Tbl_Assignment");
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
            loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
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
            loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int studentId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string title = (row.Cells[2].Controls[0] as TextBox).Text;
                string details = (row.Cells[3].Controls[0] as TextBox).Text;
                string file = (row.Cells[4].Controls[0] as TextBox).Text;
                string endDate = (row.Cells[5].Controls[0] as TextBox).Text;
                string assignDate = (row.Cells[6].Controls[0] as TextBox).Text;
                string staffName = (row.Cells[7].Controls[0] as TextBox).Text;
                string divName = (row.Cells[8].Controls[0] as TextBox).Text;
                string className = (row.Cells[9].Controls[0] as TextBox).Text;
                string semName = (row.Cells[10].Controls[0] as TextBox).Text;
                string depart = (row.Cells[11].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_Assignment_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@assignemtId", studentId);
                cmd.Parameters.AddWithValue("@title", title);
                cmd.Parameters.AddWithValue("@details", details);
                cmd.Parameters.AddWithValue("@file", file);
                cmd.Parameters.AddWithValue("@endDate", endDate);
                cmd.Parameters.AddWithValue("@assignDate", assignDate);
                cmd.Parameters.AddWithValue("@staffName", staffName);
                cmd.Parameters.AddWithValue("@divname", divName);
                cmd.Parameters.AddWithValue("@classname", className);
                cmd.Parameters.AddWithValue("@semname", semName);
                cmd.Parameters.AddWithValue("@departname", depart);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");

            }
            catch (Exception ex)
            {

            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int assignemtId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_Assignment_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@assignemtId", assignemtId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("addAssignment.aspx");
        }

        protected void fileLink_Click(object sender, EventArgs e)
        {
            int id = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string fileLocation = gridview.Rows[id].Cells[4].Text;
            string filePath = Server.MapPath("~/" + fileLocation);
            WebClient webClient = new WebClient();
            Byte[] fileBiffer = webClient.DownloadData(filePath);
            if (fileBiffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", fileBiffer.Length.ToString());
                Response.BinaryWrite(fileBiffer);
            }
        }
    }
}