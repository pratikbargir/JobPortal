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

public partial class master_Advance_Search : System.Web.UI.Page
{

    public

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    

    //protected void Page_Load(object sender, EventArgs e)
    //{

    //}
    //protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}

    public void clear()
    {
       
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
         
       // dt.Clear();
       // cn.Open();
       // cmd.CommandText = "select * from job where jtitle='" + drpcategory.Text + "' and jcity='" + drplocation.Text + "' and jdesignation='" + drpdesignation.Text + "' and compname='" + drpcompany.Text + "' and jminsal='" + drpminsal.Text + "'and jmaxsal='" + drpmaxsal.Text + "'";
       // cmd.Connection = cn;
       // dt.Load(cmd.ExecuteReader());
       // //DataList1.DataSource = dt;
       //// DataList1.DataBind();
       // GridView1.DataSource = dt;
       //GridView1.DataBind();
       // cn.Close();
        
        
    }
    //protected void DropLocation_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    //protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    //{

    //}
    //protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    //{

    //}
    String a;
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("~/candidatelogin/CandidateLogin.aspx" + a);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void drpcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cat"] = drpcategory.SelectedValue;
    }
    protected void drpcompany_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["com"] = drpcompany.SelectedValue;
    }
    protected void drpdesignation_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["des"] = drpdesignation.SelectedValue;
    }
    protected void drplocation_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["city"] = drplocation.SelectedValue;
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
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
