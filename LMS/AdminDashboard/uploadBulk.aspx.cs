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
                if (Session["id"] != null && Session["redirectedFrom"] != null)
                {

                }
                else
                {
                    Response.Redirect("../adminLogin.aspx");
                }
            }
        }

        private void InsertCSVRecords(DataTable csvdt)
        {
            try
            {
                SqlBulkCopy objbulk = new SqlBulkCopy(conn);
                objbulk.DestinationTableName = "Tbl_Faculty";
               // objbulk.ColumnMappings.Add("Fid", "Fid");
                objbulk.ColumnMappings.Add("Fname","Fname");
                objbulk.ColumnMappings.Add("Mname","Mname");
                objbulk.ColumnMappings.Add("Lname","Lname");
                objbulk.ColumnMappings.Add("Mobile","Mobile");
                objbulk.ColumnMappings.Add("Email","Email");
                objbulk.ColumnMappings.Add("Username","Username");
                objbulk.ColumnMappings.Add("Password","Password");
                objbulk.ColumnMappings.Add("Did","Did");
                objbulk.ColumnMappings.Add("deptname","deptname");
                conn.Open();
                objbulk.WriteToServer(csvdt);
                Responsehu.Visible = true;
                Responsehu.Text = "Record Insert Successfully into the Database";
                Responsehu.ForeColor = System.Drawing.Color.CornflowerBlue;
                conn.Close();
                FileInfo file = new FileInfo(FilePath);
                //if (file.Exists)
                //{
                //    file.Delete();
                //}
            }
            catch (Exception ex)
            {
                Responsehu.Visible = true;
                Responsehu.Text = ex.Message;
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                dt = ReadCsvFile();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Responsehu.Text = ex.Message;
            }
        }
        public DataTable ReadCsvFile()
        {

            DataTable dtCsv = new DataTable();
            string Fulltext;
            if (txt_Upload.HasFile)
            {
                FilePath = Server.MapPath("\\" + System.DateTime.Now.ToString("ddMMyyyy_hhmmss") + ".csv");
                txt_Upload.SaveAs(FilePath);
                using (StreamReader sr = new StreamReader(FilePath))
                {
                    while (!sr.EndOfStream)
                    {
                        Fulltext = sr.ReadToEnd().ToString();
                        string[] rows = Fulltext.Split('\n');
                        for (int i = 0; i < rows.Count() - 1; i++)
                        {
                            string[] rowValues = rows[i].Split(',');
                            {
                                if (i == 0)
                                {
                                    for (int j = 0; j <rowValues.Count(); j++)
                                    {
                                        dtCsv.Columns.Add(rowValues[j]);
                                    }
                                }
                                else
                                {
                                    DataRow dr = dtCsv.NewRow();
                                    for (int k = 0; k <rowValues.Count(); k++)
                                    {
                                        dr[k] = rowValues[k].ToString();
                                    }
                                    dtCsv.Rows.Add(dr);
                                }
                            }
                        }
                    }
                }
            }
            InsertCSVRecords(dtCsv);
            return dtCsv;
        }
    }
}