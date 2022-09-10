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
        String sem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!IsPostBack)
            {
                loadDepart();
            }
        }

        protected void loadDepart()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Tbl_Depart", conn);
            cmd.CommandType = CommandType.Text;
            ddDepart.DataSource = cmd.ExecuteReader();
            ddDepart.DataTextField = "Dname";
            ddDepart.DataValueField = "Did";
            ddDepart.DataBind();
            ddDepart.Items.Insert(0, new ListItem("Select Department", "0"));
            conn.Close();
        }

        protected void ddDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            int DepartId = Convert.ToInt32(ddDepart.SelectedValue);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Class where Did=" + DepartId, conn);
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
            int ClassId = Convert.ToInt32(ddClass.SelectedValue);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Sem where classID=" + ClassId, conn);
            cmd.CommandType = CommandType.Text;
            ddSem.DataSource = cmd.ExecuteReader();
            ddSem.DataTextField = "semName";
            ddSem.DataValueField = "semID";
            ddSem.DataBind();
            ddSem.Items.Insert(0, new ListItem("Select Semister", "0"));
            conn.Close();
        }

        protected void ddSem_SelectedIndexChanged(object sender, EventArgs e)
        {
            sem = Convert.ToString(ddSem.SelectedItem).Replace(" ", "") + DateTime.Now.Year.ToString();
        }
        private void InsertCSVRecords(DataTable csvdt)
        {
            try
            {
                SqlBulkCopy objbulk = new SqlBulkCopy(conn);
                objbulk.DestinationTableName = sem;
                objbulk.ColumnMappings.Add("Fname", "Fname");
                objbulk.ColumnMappings.Add("Mname", "Mname");
                objbulk.ColumnMappings.Add("Lname", "Lname");
                objbulk.ColumnMappings.Add("Mobile", "Mobile");
                objbulk.ColumnMappings.Add("Email", "Email");
                objbulk.ColumnMappings.Add("Username", "Username");
                objbulk.ColumnMappings.Add("Password", "Password");
                objbulk.ColumnMappings.Add("Did", "Did");
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