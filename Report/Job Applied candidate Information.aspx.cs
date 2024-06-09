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
public partial class Report_Job_Applied_candidate_Information : System.Web.UI.Page
{
    ReportDocument crpt = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select * from job_applied", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "job_applied");
        crpt.Load("G:\\JobPortal\\report\\jobapplied.rpt");
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
    
    }
}
