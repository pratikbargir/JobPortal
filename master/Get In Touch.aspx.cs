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
using System.Data;

public partial class master_Get_In_Touch : System.Web.UI.Page
{
    public
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
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
        txtnm.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        txtmsg.Text = "";
    }

   protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            cmd.CommandText = "insert into getintouch values('" + txtnm.Text + "'," + txtcontact.Text + ",'" + txtemail.Text + "','" + Convert.ToString(txtmsg.Text) + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            clear();
        }
        catch (Exception ex)
        {
        }
        finally
        {

            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Message send successfully.')</Script>");
        }

    }
   protected void txtemail_TextChanged(object sender, EventArgs e)
   {

   }
}
