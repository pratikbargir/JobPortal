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

public partial class admin_Company : System.Web.UI.Page
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
        showgrid();
    }
        public void showgrid()
    {
        dt.Clear();
        cn.Open();
        cmd.CommandText="select * from company";
        cmd.Connection=cn;
        dt.Load(cmd.ExecuteReader());
        GridView1.DataSource=dt;
        GridView1.DataBind();
        cn.Close();
    }
    public void clear()
    {
        txtccode.Text = " ";
        txtcname.Text = "";
        txtccity.Text = "";
        txtccontact.Text = "";
        drpbranch.Text = "";
        txtcemail.Text = "";
        txtcwebsite.Text = "";
        drpctype.Text = "";

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into company values(" + txtccode.Text + ",'" + txtcname.Text + "','" + txtccity.Text + "'," + txtccontact.Text + "," + Convert.ToInt32 (drpbranch.Text)  + ",'" + txtcemail.Text + "','" + txtcwebsite.Text + "','" +  drpctype.Text  +"')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Data Saved')</Script>");
        showgrid();
        clear();

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select count(company_code) from company", cn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
        txtccode.Text = i.ToString();
        showgrid();
        //clear();


    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update company set company_code=" + txtccode.Text + ",company_name='" + txtcname.Text + "',head_office_city='" + txtccity.Text +"',head_office_contact=" + txtccontact.Text  + ",no_of_branch=" + Convert.ToInt32(drpbranch.Text) +",company_email_id='" + txtcemail.Text + "',company_website='" +txtcwebsite.Text +"',company_type='" + drpctype.Text  +"'where company_code="+ txtccode.Text +"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        showgrid();
        clear();

    }
protected void  btndelete_Click(object sender, EventArgs e)
{
    cn.Open();
    cmd.CommandText = "delete from company where company_code=" + txtccode.Text + "";
    cmd.Connection = cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    showgrid();
    clear();
    

}
protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
{
    GridViewRow row=GridView1.SelectedRow;

    txtccode.Text=row.Cells[1].Text;
    txtcname.Text=row.Cells[2].Text;
    txtccity.Text=row.Cells[3].Text;
    txtccontact.Text=row.Cells[4].Text;
    drpbranch.Text=row.Cells[5].Text;
    txtcemail.Text=row.Cells[6].Text;
    txtcwebsite.Text=row.Cells[7].Text;
    drpctype.Text=row.Cells[8].Text;

}
}
