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


public partial class candidatelogin_ManageProfile : System.Web.UI.Page
{
    public
   // SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
   SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString); 
   SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    String i;
    protected void Page_Load(object sender, EventArgs e)
    {      
        i = Convert.ToString(Session["cid"]);
    }
    public void clear()
    {
        //txtusername.Text = "";
        //txtpassword.Text = "";
        //txtconfirmpasswd.Text = "";
        //txtfname.Text = "";
        //txtlname.Text = "";
        //txtmidname.Text = "";
        //txtaddr.Text = "";
        //txtcity.Text = "";
        //txtstate.Text = "";
        //txtdob.Text = "";
        //txtcontact.Text = "";
        //txtemail.Text = "";
        //txtcertificatein.Text = "";
        //txtcertificatesp.Text = "";
        //txtsscperc.Text = "";
        //txthscperc.Text = "";
        //txtgradperc.Text = "";
        //txtpgperc.Text = "";
        //txtphdperc.Text = "";
        //txtcertificatesp.Text = "";
        //txtcname.Text = "";
        //txtdesign.Text = "";
        //txtsal.Text = "";
        //txtskills.Text = "";        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //GridViewRow row = GridView1.SelectedRow;
        //txtusername.Text = row.Cells[1].Text;
        //txtpassword.Text=row.Cells[2].Text;
    }   
   
   
    
   
    
   
    protected void btnupdateresume_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //cmd.CommandText = "update candidate_resume set resume_path='" + txtresumepath.Text + "' where candidate_id='" + i + "'";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language='javascript'>alert('Data Updated')</Script>");
        //GridView5.Visible = false;
        //clear();
   
    }
   
   
}

