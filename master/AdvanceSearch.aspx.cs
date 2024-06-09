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
using System.Data;
using System.Data.SqlClient;

public partial class master_Advance_Search : System.Web.UI.Page
{

    public

    //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
   SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
   //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public void clear()
    {
       
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
         
        dt.Clear();
        cn.Open();
        cmd.CommandText = "select * from job where jtitle='" + DropCat.Text + "' and city='" + DropLocation.Text + "' and Designation='" + DropPost.Text + "' and jminsal='" + DropExSalary1.Text + "'and jmaxsal='" + DropExSalary2.Text + "'";
   
        cmd.Connection = cn;
        dt.Load(cmd.ExecuteReader());
                
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
        
        
    }
    protected void DropLocation_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/candidateLogin/CandidateLogin.aspx");
   
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}
