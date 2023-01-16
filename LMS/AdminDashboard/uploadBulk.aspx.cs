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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection conn;
        string FilePath;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!this.IsPostBack)
            {
                if (Session["Aid"] != null && Session["redirectedFrom"] != null)
                {

                }
                else
                {
                    Response.Redirect("../adminLogin.aspx");
                }
            }
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
                tblcsv.Columns.Add("firstName");
                tblcsv.Columns.Add("middleName");
                tblcsv.Columns.Add("lastName");
                tblcsv.Columns.Add("mobile");
                tblcsv.Columns.Add("email");
                tblcsv.Columns.Add("username");
                tblcsv.Columns.Add("departId");
                tblcsv.Columns.Add("departName");
                //getting full file path of Uploaded file  
                String fname = fileUpload.FileName;
                String floc = "staffBulkFile/";
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
                SqlCommand cmd = new SqlCommand("usp_Tbl_Staff_INSERT", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fname", row.Cells[0].Text);
                cmd.Parameters.AddWithValue("@mname", row.Cells[1].Text);
                cmd.Parameters.AddWithValue("@lname", row.Cells[2].Text);
                cmd.Parameters.AddWithValue("@mobile", row.Cells[3].Text);
                cmd.Parameters.AddWithValue("@email", row.Cells[4].Text);
                cmd.Parameters.AddWithValue("@username", row.Cells[5].Text);
                cmd.Parameters.AddWithValue("@password", "12345");
                cmd.Parameters.AddWithValue("@did", row.Cells[6].Text);
                cmd.Parameters.AddWithValue("@dname", row.Cells[7].Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("faculty.aspx");
        }
    }
}