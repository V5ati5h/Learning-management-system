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

namespace LMS.StudentDashboard
{
    public partial class WebForm2 : System.Web.UI.Page
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
                    loadData("SELECT * FROM Tbl_Assignment WHERE divName=" + "'" + Session["divName"] + "' and semName=" + "'" + Session["semName"]  + "'" + " and className=" + "'" + Session["className"] + "'" + " and departName=" + "'" +Session["dipartName"]+ "'");
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

        protected void fileLink_Click(object sender, EventArgs e)
        {
            int id = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string fileLocation = gridview.Rows[id].Cells[3].Text;
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

        protected String loadkar(String id)
        {
            String tect;
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT byStaff FROM Tbl_Assignment where assignemtId=@id", conn);
            cmd.Parameters.AddWithValue("@id", id);
            tect = Convert.ToString(cmd.ExecuteScalar());
            conn.Close();
            return tect;
        }

        protected void DivSubmit_Click(object sender, EventArgs e)
        {
            String fname = fileUpload.FileName;
            String floc = "AssignmentSubmit/";
            String fpath = System.IO.Path.Combine(floc, fname).Replace("StudentDashboard\\", "");
            fileUpload.SaveAs(MapPath(fpath).Replace("StudentDashboard\\", ""));
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_SAssignment_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gr", Session["gr"]);
                cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@details", txtDetail.Text);
                cmd.Parameters.AddWithValue("@file", fpath);
                cmd.Parameters.AddWithValue("@givenBy", loadkar(AssignId.Text));
                cmd.Parameters.AddWithValue("@reply", "No reply");
                cmd.Parameters.AddWithValue("@divName", Session["divName"]);
                cmd.Parameters.AddWithValue("@className", Session["className"]);
                cmd.Parameters.AddWithValue("@semName", Session["semName"]);
                cmd.Parameters.AddWithValue("@departName", Session["dipartName"]);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    libmsg.Visible = true;
                    libmsg.Text = "Record Insert Successfully into the Database";
                    libmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Redirect("homework.aspx");

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