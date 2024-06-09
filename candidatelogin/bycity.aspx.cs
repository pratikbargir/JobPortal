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
using System.Data.SqlClient;
public partial class master_bycity : System.Web.UI.Page
{
    String a;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    
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
        int jcode;
        string canid, date1;
        ImageButton btn = sender as ImageButton;
        jcode = Convert.ToInt32(btn.CommandArgument);
        canid = Session["cid"].ToString();
        date1 = System.DateTime.Now.ToShortDateString();
        //Session["jobid"] = a;
        //Response.Redirect("~/master/CandidateLogin.aspx");
        cn.Open();
        cmd.CommandText = "insert into job_applied values('" + canid + "'," + jcode + ",'" + date1 + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('successfully applied for job')</script>");

    }
}
