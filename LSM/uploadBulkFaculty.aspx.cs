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

namespace LSM
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
        }
        protected void btnsubmitclick(object sender, EventArgs e)
        {
            System.IO.StreamReader myReader = new System.IO.StreamReader(txt_Upload.PostedFile.InputStream);
            string csvData = myReader.ReadToEnd();
            Response.Write(csvData);
        }
    }
}