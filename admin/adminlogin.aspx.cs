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


public partial class admin_adminlogin : System.Web.UI.Page
{
    public
   SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        
        SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            cmd.CommandText = "select name,password from admin where name ='" + txtnm.Text + "' and password='" + txtpwd.Text + "'";

            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            String a = txtnm.Text;
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("~/admin/Home.aspx?name=" + a);
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
        txtpwd.Text = "";
    }
}
