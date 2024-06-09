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

public partial class admin_CreateAdmin : System.Web.UI.Page
{
    public
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();


    void clear()
    {
        TextU_nm1.Text = "";
        TextPass.Text = "";
        TextC_pass.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCreate_Click(object sender, EventArgs e)
    {

            cn.Open();
            cmd.CommandText = "insert into admin values('" + TextU_nm1.Text + "','" + TextPass.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language='javascript'>alert('Admin added successfully')</Script>");
        
        
    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void TextU_nm1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextU_nm1_TextChanged1(object sender, EventArgs e)
    {

    }
}
