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

public partial class candidate_login_Candidate_Login : System.Web.UI.Page
{
    public
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    String a;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            cmd.CommandText = "select * from candidate_login where username ='" + txtnm.Text + "' and password='" + txtpasswd.Text + "'";
           
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        id =Convert.ToInt32 (dr.GetString(0));


            //    }


            //}
           // Label4.Text = id.ToString ();
            //String a = txtnm.Text;
            if (dt.Rows.Count > 0)
            {
               // Session["cid"] = id;
                Session["Cname"] = txtnm.Text;
                Response.Redirect("~/candidatelogin/CandidateHome.aspx");
            }
        }
        catch (Exception ex)
        {
        }
        finally
        {
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Incorrect username or password')</Script>");

        }
        txtnm.Text = "";
        txtpasswd.Text = "";

   }
}
