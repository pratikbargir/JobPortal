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

public partial class master_studregistration : System.Web.UI.Page
{
    public
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public void clear()
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        txtconfirmpasswd.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtmidname.Text = "";
        txtaddr.Text = "";
        txtcity.Text = "";
        txtstate.Text = "";
        txtdob.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        //drpsscin.Text = "";
       // drphscin.Text = "";
       // drpgradin.Text = "";
       // drppgin.Text = "";
       // drpphdin.Text = "";
        txtcertificatein.Text = "";
       // drphscsp.Text = "";
       // drpgradsp.Text = "";
        //drppgsp.Text = "";
       // drpphdsp.Text = "";
        txtcertificatesp.Text = "";
        txtsscperc.Text = "";
        txthscperc.Text = "";
        txtgradperc.Text = "";
        txtpgperc.Text = "";
        txtphdperc.Text = "";
        txtcertificatesp.Text = "";
        //drpexperience.Text = "";
        txtcname.Text = "";
        txtdesign.Text = "";
        txtsal.Text = "";
        txtskills.Text = "";
        chkterms.Text = "";
    }
    public int getcid(String  unm, SqlConnection cn)
    {
        int c;
        String query="select candidate_id from candidate where contact_no='" + unm +"'";
        da = new SqlDataAdapter(query, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        c = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());
        return(c);
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (chkterms.Checked == true)
        {
            //for login details
            cn.Open();
            cmd.CommandText = "insert into candidate_login values('" + txtusername.Text +"','" + txtpassword.Text +"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            //for personal details
            cn.Open();
            cmd.CommandText = "insert into candidate values('" + txtfname.Text + "','" + txtmidname.Text + "','" + txtlname.Text + "','" + txtaddr.Text + "','" + txtcity.Text + "','" + txtstate.Text + "',@p1,'" + txtdob.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + Image11.ImageUrl + "')";
            if (rdmale.Checked)
                cmd.Parameters.AddWithValue("@p1", rdmale.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rdfemale.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            //for educational details
            int c = getcid((txtcontact.Text),cn);
            cn.Open();
            cmd.CommandText = "insert into candidate_education values(" + c + ",'" + drpsscin.Text + "','" + txtsscperc.Text + "','" + drphscin.Text + "','" + txthscperc.Text + "','" + drphscsp.Text + "','" + drpgradin.Text + "'," + txtgradperc.Text + ",'" + drpgradsp.Text + "','" + drppgin.Text + "'," + txtpgperc.Text + ",'" + drppgsp.Text + "','" + drpphdin.Text + "','" + txtphdperc.Text + "','" + drpphdsp.Text + "','" + txtcertificatein.Text + "','" + txtcertificateperc.Text + "','" + txtcertificatesp.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            //for professional details
            cn.Open();
            cmd.CommandText = "insert into candidate_professional values(" + c + ",'" + txtcname.Text + "','" + txtdesign.Text + "','" + Convert.ToInt32(drpexperience.Text) + "'," + txtsal.Text + ",'" + txtskills.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            //for resume details
            cn.Open();
            cmd.CommandText = "insert into candidate_resume values(" + c + ",'" + txtresumepath.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language='javascript'>alert('Data Saved Successfully')</Script>");
            clear();
            Response.Redirect("~/candidatelogin/CandidateLogin.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Please Accept all terms and conditions')</Script>");
       
        }
        
        ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Registration Successful')</Script>");
       

    }
    protected void chkterms_CheckedChanged(object sender, EventArgs e)
    {
    }
    protected void drpexperience_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ck = drpexperience.SelectedItem.Text;
        if (drpexperience.SelectedValue .Contains("0")) 
        {
            txtcname.Enabled  = false;
            txtdesign.Enabled = false;
            txtsal.Enabled = false;
            txtskills.Enabled = false;
        }
        else
        {
            txtcname.Enabled = true ;
            txtdesign.Enabled = true;
            txtsal.Enabled = true;
            txtskills.Enabled = true;
        }

    }
    protected void btnuploadimg_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
             FileUpload1.SaveAs(Server.MapPath("~\\images\\ " + FileUpload1.FileName));
             Image11.ImageUrl = "~\\images\\ " + FileUpload1.FileName;            
        }
    }
    protected void btnuploadresume_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\images\\" +FileUpload2.FileName));
            txtresumepath.Text = "~\\images\\" + FileUpload2.FileName;

        }
    }
    }
