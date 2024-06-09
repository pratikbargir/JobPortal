using System;
using System.Collections;
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

public partial class master_bycity : System.Web.UI.Page
{
    String a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            a = Request.QueryString["Menu1"];
            
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/candidatelogin/CandidateLogin.aspx");
    }
}
