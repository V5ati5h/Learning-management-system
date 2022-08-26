using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace LSM
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        Control containerDiv;
        private int IdCount = 0;
private string GetNewID()
{
    return string.Format("try{0}", IdCount++);
}
        protected void Page_Load(object sender, EventArgs e)
        {
            this.containerDiv.Controls.Add(
                new LinkButton()
                {
                    ID = GetNewID(),
                    CommandName = "DoSomething",
                    CommandArgument = "arg",
                    Text = "Try Me",
                });
            this.Page.Controls.Add(containerDiv);
        }

    }
}