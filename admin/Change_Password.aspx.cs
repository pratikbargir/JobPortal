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

public partial class admin_Change_Password : System.Web.UI.Page
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
    protected void BtnSet_Click(object sender, EventArgs e)
    {
        try
        {
            String n, p;
            cn.Open();
            cmd.CommandText = "select name,password from admin where name='" + TextU_nm1.Text + "'and password='" + TextN_pass.Text + "'";
            cmd.Connection = cn;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    n = dr.GetString(0);
                    p = dr.GetString(1);
                }
            }
        }
        catch (Exception ex)
        {
        }
        finally
        {
            cn.Close();
        }
        try
        {
            cn.Open();
            cmd.CommandText = "update admin set name='" + TextU_nm1.Text + "',password='" + TextN_pass.Text + "' where name='" + TextU_nm1.Text + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
        }
        catch
        {
        }
        finally
        {
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Password changed')</script>");
        }

    }
   
}
