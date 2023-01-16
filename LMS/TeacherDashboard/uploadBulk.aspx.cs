using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.TeacherDashboard
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection conn;
        string FilePath;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Tid"] != null && Session["redirectedFrom"] != null)
                {
                    loadDepart();
                    Session["redirectedFrom"] = "Dashboard";
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
        }
        private void Bindgrid(DataTable csvdt)
        {
            GridView1.DataSource = csvdt;
            GridView1.DataBind();
            UtDb.Visible = true;
            UtDb.Enabled = true;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable tblcsv = new DataTable();
                tblcsv.Columns.Add("grNo");
                tblcsv.Columns.Add("rollNo");
                tblcsv.Columns.Add("firstName");
                tblcsv.Columns.Add("middleName");
                tblcsv.Columns.Add("lastName");
                tblcsv.Columns.Add("email");
                tblcsv.Columns.Add("mobile");
                tblcsv.Columns.Add("dateOfBirth");
                tblcsv.Columns.Add("username");
                //getting full file path of Uploaded file  
                String fname = fileUpload.FileName;
                String floc = "studentBulkFile/";
                String fpath = System.IO.Path.Combine(floc, fname);
                fileUpload.SaveAs(MapPath(fpath));
                //Reading All text  
                string ReadCSV = File.ReadAllText(MapPath(fpath));
                //spliting row after new line  
                foreach (string csvRow in ReadCSV.Split('\n'))
                {
                    if (!string.IsNullOrEmpty(csvRow))
                    {
                        //Adding each row into datatable  
                        tblcsv.Rows.Add();
                        int count = 0;
                        foreach (string FileRec in csvRow.Split(','))
                        {
                            tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                            count++;
                        }
                    }
                    //Calling Bind Grid Functions
                    Bindgrid(tblcsv);

                }
            }
            catch (Exception ex)
            {
                Responsehu.Text = ex.Message;
                Responsehu.Visible = true;
            }
        }

        protected void UtDb_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                SqlCommand cmd = new SqlCommand("usp_Tbl_Student_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@grNo", row.Cells[0].Text);
                cmd.Parameters.AddWithValue("@rollNo", row.Cells[1].Text);
                cmd.Parameters.AddWithValue("@image", "");
                cmd.Parameters.AddWithValue("@fname", row.Cells[2].Text);
                cmd.Parameters.AddWithValue("@mname", row.Cells[3].Text);
                cmd.Parameters.AddWithValue("@lname", row.Cells[4].Text);
                cmd.Parameters.AddWithValue("@departName", Convert.ToString(ddDepart.SelectedItem));
                cmd.Parameters.AddWithValue("@semName", Convert.ToString(ddSem.SelectedItem));
                cmd.Parameters.AddWithValue("@className", Convert.ToString(ddClass.SelectedItem));
                cmd.Parameters.AddWithValue("@divName", Convert.ToString(ddDiv.SelectedItem));
                cmd.Parameters.AddWithValue("@email", row.Cells[5].Text);
                cmd.Parameters.AddWithValue("@mobile", row.Cells[6].Text);
                cmd.Parameters.AddWithValue("@dob", row.Cells[7].Text);
                cmd.Parameters.AddWithValue("@uname", row.Cells[8].Text);
                cmd.Parameters.AddWithValue("@pass", "12345");
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("students.aspx");
        }
    }
}