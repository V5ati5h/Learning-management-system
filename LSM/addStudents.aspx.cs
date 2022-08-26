using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LSM
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection conn;
        String year;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            if (!IsPostBack)
            {
                year = DateTime.Now.Year.ToString();
                loadDepart();
            }
        }

        protected void loadDepart()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Department", conn);
            cmd.CommandType = CommandType.Text;
            ddDepart.DataSource = cmd.ExecuteReader();
            ddDepart.DataTextField = "departName";
            ddDepart.DataValueField = "departID";
            ddDepart.DataBind();
            ddDepart.Items.Insert(0, new ListItem("Select Department", "0"));
            conn.Close();
        }

        protected void ddDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            int DepartId = Convert.ToInt32(ddDepart.SelectedValue);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Class where departID=" + DepartId, conn);
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

        protected void insertData()
        {

        }
    }
}