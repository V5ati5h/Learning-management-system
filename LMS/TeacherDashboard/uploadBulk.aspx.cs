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
        private void InsertCSVRecords(DataTable csvdt)
        {
            try
            {
                SqlBulkCopy objbulk = new SqlBulkCopy(conn);
                objbulk.DestinationTableName = "Tbl_Student";
                objbulk.ColumnMappings.Add("grNo", "grNo");
                objbulk.ColumnMappings.Add("rollNo", "rollNo");
                objbulk.ColumnMappings.Add("image", "image");
                objbulk.ColumnMappings.Add("firstName", "firstName");
                objbulk.ColumnMappings.Add("middleName", "middleName");
                objbulk.ColumnMappings.Add("lastName", "lastName");
                objbulk.ColumnMappings.Add("divName", Convert.ToString(ddDiv.SelectedItem));
                objbulk.ColumnMappings.Add("className", Convert.ToString(ddClass.SelectedItem));
                objbulk.ColumnMappings.Add("semName", Convert.ToString(ddSem.SelectedItem));
                objbulk.ColumnMappings.Add("departName", Convert.ToString(ddDepart.SelectedItem));
                objbulk.ColumnMappings.Add("email", "email");
                objbulk.ColumnMappings.Add("mobile", "mobile");
                objbulk.ColumnMappings.Add("dateOfBirth", "dob");
                objbulk.ColumnMappings.Add("username", "uname");
                objbulk.ColumnMappings.Add("password", "password");
                conn.Open();
                objbulk.WriteToServer(csvdt);
                Responsehu.Visible = true;
                Responsehu.Text = "Record Insert Successfully into the Database";
                Responsehu.ForeColor = System.Drawing.Color.CornflowerBlue;
                conn.Close();
                FileInfo file = new FileInfo(FilePath);
                if (file.Exists)
                {
                    file.Delete();
                }
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
                                    for (int j = 0; j < rowValues.Count(); j++)
                                    {
                                        dtCsv.Columns.Add(rowValues[j]);
                                    }
                                }
                                else
                                {
                                    DataRow dr = dtCsv.NewRow();
                                    for (int k = 0; k < rowValues.Count(); k++)
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