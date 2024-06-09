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

public partial class master_Candidatelogin : System.Web.UI.Page
{
    //public SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            cmd.CommandText = "select Username,Password from login where Username ='" + txtnm.Text + "'and Password='" + txtpasswd.Text + "'";

            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            String a = txtnm.Text;
            String date1 = System.DateTime.Now.ToShortDateString();
            String j = Session["jcode"].ToString();
            if (dt.Rows.Count > 0)
            {

                cn.Open();
                cmd.CommandText = "select * from candidate_login where username ='" + txtnm.Text + "' and password='" + txtpasswd.Text + "'";

                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(dt);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        id = Convert.ToInt32(dr.GetString(0));
                    }
                }
                cn.Close();



                cn.Open();
                cmd.CommandText = "insert into job_applied values('" + j + "',"+ id +",'" + date1 + "')";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                cn.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('successfully applied for job')</script>");

              //  Response.Redirect("~/admin/Home.aspx?name=" + a);
             //   Session["cname"] = txtnm.Text;
              //  Response.Redirect("~/candidateLogin/CandidateHome.aspx");
            }
        }
        catch (Exception ex)
        {
        }
        finally
        {
            cn.Close();

        }
      //  ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Incorrect username or password')</script>");

        //txtnm.Text = "";
        //txtpasswd.Text = "";
        
    }
}
