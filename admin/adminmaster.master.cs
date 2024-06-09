using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class admin_home : System.Web.UI.MasterPage
{
    String a;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Request.QueryString["name"];
        Label1.Text = a;
        Label2.Text = System.DateTime.Now.ToString();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
