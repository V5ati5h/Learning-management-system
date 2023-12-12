﻿using System;
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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection conn;
        string gridDD;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Tid"] != null && Session["redirectedFrom"] != null)
                {
                    loadDepart();
                    Session["redirectedFrom"] = "Dashboard";
                    loadData("SELECT * FROM Tbl_SAssignment");
                }
                else
                {
                    Response.Redirect("../login.aspx");
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
            loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
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
            loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview.EditIndex = e.NewEditIndex;
            loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                GridViewRow row = gridview.Rows[e.RowIndex];
                int sid = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
                string grNo = (row.Cells[2].Controls[0] as TextBox).Text;
                string title = (row.Cells[3].Controls[0] as TextBox).Text;
                string details = (row.Cells[4].Controls[0] as TextBox).Text;
                string filePath = (row.Cells[5].Controls[0] as TextBox).Text;
                string submittedOn = (row.Cells[6].Controls[0] as TextBox).Text;
                string givenBy = (row.Cells[7].Controls[0] as TextBox).Text;
                string divName = (row.Cells[9].Controls[0] as TextBox).Text;
                string className = (row.Cells[10].Controls[0] as TextBox).Text;
                string semName = (row.Cells[11].Controls[0] as TextBox).Text;
                string depart = (row.Cells[12].Controls[0] as TextBox).Text;
                SqlCommand cmd = new SqlCommand("usp_Tbl_SAssignment_UPDATE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@submitId", sid);
                cmd.Parameters.AddWithValue("@gr", grNo);
                cmd.Parameters.AddWithValue("@title", title);
                cmd.Parameters.AddWithValue("@details", details);
                cmd.Parameters.AddWithValue("@file", filePath);
                cmd.Parameters.AddWithValue("@submitedOn", submittedOn);
                cmd.Parameters.AddWithValue("@givenBy", givenBy);
                cmd.Parameters.AddWithValue("@reply", gridDD);
                cmd.Parameters.AddWithValue("@divName", divName);
                cmd.Parameters.AddWithValue("@className", className);
                cmd.Parameters.AddWithValue("@semName", semName);
                cmd.Parameters.AddWithValue("@departName", depart);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                gridview.EditIndex = -1;
                loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");

            }
            catch (Exception ex)
            {
                msg.Visible = true;
                msg.Text = ex.Message;
            }
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gridview.EditIndex = -1;
            loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridview.Rows[e.RowIndex];
            int sId = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("usp_Tbl_SAssignment_DELETE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@submitId", sId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            loadData("SELECT * FROM Tbl_SAssignment WHERE divName=" + "'" + ddDiv.SelectedItem + "' and semName=" + "'" + ddSem.SelectedItem + "'" + " and className=" + "'" + ddClass.SelectedItem + "'" + " and departName=" + "'" + ddDepart.SelectedItem + "'");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void replyDD_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = sender as DropDownList;
            string id = dropDownList.ID;
            gridDD = dropDownList.SelectedItem.Text;
        }
    }
}