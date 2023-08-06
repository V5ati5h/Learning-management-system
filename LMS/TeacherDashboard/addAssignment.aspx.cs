using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LMS.TeacherDashboard
{
    public partial class WebForm11 : System.Web.UI.Page
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
            //sem = "usp_" + Convert.ToString(ddDiv.SelectedItem).Replace(" ", "") + "_insert";
            //libmsg.Visible = true;
            //libmsg.Text = sem;
        }

        protected void insertData(object sender, EventArgs e)
        {
            String fname = fileUpload.FileName;
            String floc = "Assignments/";
            String fpath = System.IO.Path.Combine(floc, fname).Replace("TeacherDashboard\\","");
            fileUpload.SaveAs(MapPath(fpath).Replace("TeacherDashboard\\", ""));
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_Assignment_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@title", txtAdorGiNo.Text);
                cmd.Parameters.AddWithValue("@details", description.Text);
                cmd.Parameters.AddWithValue("@file", fpath);
                cmd.Parameters.AddWithValue("@endDate", endDate.Value);
                cmd.Parameters.AddWithValue("@assignDate", assignDate.Value);
                cmd.Parameters.AddWithValue("@staffName", Session["Tid"]);
                cmd.Parameters.AddWithValue("@divName", Convert.ToString(ddDiv.SelectedItem));
                cmd.Parameters.AddWithValue("@className", Convert.ToString(ddClass.SelectedItem));
                cmd.Parameters.AddWithValue("@semName", Convert.ToString(ddSem.SelectedItem));
                cmd.Parameters.AddWithValue("@departName", Convert.ToString(ddDepart.SelectedItem));
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("assignment.aspx");

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