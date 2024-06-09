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

using CrystalDecisions.CrystalReports.Engine;

using System.Data.SqlClient;

public partial class Report_admin_List : System.Web.UI.Page
{
    ReportDocument crpt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select * from admin", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "admin");
        crpt.Load("G:\\JobPortal\\report\\admin.rpt");
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
    



    }
}
