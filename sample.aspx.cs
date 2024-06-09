using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        SqlConnection cn=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
        
    }
}
