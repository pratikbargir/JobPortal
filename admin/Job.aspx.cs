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

public partial class admin_Job : System.Web.UI.Page
{
    public
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    public void showgrid()
    {
        dt.Clear();
        cn.Open();
        cmd.CommandText = "select jcode as JOB_CODE,jtitle as CATEGORY,compname as COMPANY_NAME,jcity as CITY,jdesignation as DESIGNATION,jminsal as MINIMUM_SALARY,jmaxsal as MAXIMUM_SALARY,jexperience as EXPERIENCE,jqualify as QUALIFICATION from job";
        cmd.Connection = cn;
        dt.Load(cmd.ExecuteReader());
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
    }
    public void loadcompany()
    {
             
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        showgrid();
        loadcompany();
    }

    public void clear()
    {
        txtjcode.Text = "";
        txtjtitle.Text = "";
        txtcname.Text = "";
        txtjcity.Text = "";
        //txtjarea.Text = "";
        txtdesign.Text = "";
        txtmaxsal.Text = "";
        txtminsal.Text="";
        txtqualify.Text="";
        drpexp.Text = "";

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into job values(" +txtjcode.Text +",'" +txtjtitle.Text +"','" + txtcname.Text  +"','" +txtjcity.Text +"','" +txtdesign.Text+"'," + txtminsal.Text+"," +txtmaxsal.Text +"," + Convert.ToInt32( drpexp.Text) +",'"+txtqualify.Text +"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
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
        SqlCommand cmd = new SqlCommand("select count(jcode) from job", cn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
        txtjcode.Text = i.ToString();
        showgrid();
        
      }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="update job set jcode=" + txtjcode.Text + ",jtitle='" + txtjtitle.Text + "',compname=' " + txtcname.Text + " ',jcity='" + txtjcity.Text + "',jdesignation='" + txtdesign.Text +"', jminsal=" + txtminsal.Text + ",jmaxsal=" +txtmaxsal.Text + ",jexperience=" + Convert.ToInt32(drpexp.Text) + ",jqualify=' " + txtqualify.Text + "' where jcode="+ txtjcode.Text +"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        showgrid();
        clear();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from job where jcode=" + txtjcode.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        showgrid();
        clear();
    
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        txtjcode.Text = row.Cells[1].Text;
        txtjtitle.Text = row.Cells[2].Text;
        txtcname.Text = row.Cells[3].Text;
        txtjcity.Text = row.Cells[4].Text;
        //txtjarea.Text = row.Cells[5].Text;
        txtdesign.Text = row.Cells[5].Text;
        txtminsal.Text = row.Cells[6].Text;
        txtmaxsal.Text = row.Cells[7].Text;
        drpexp.Text = row.Cells[8].Text;
        txtqualify.Text = row.Cells[9].Text;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showgrid();
    }
}
