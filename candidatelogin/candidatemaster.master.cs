using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class candidate_login_candidate : System.Web.UI.MasterPage
{
    //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\JobPortal\\App_Data\\recruitment.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    
    String a,b;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
      // a = Request.QueryString["name"];
        a = Session["cname"].ToString();

        cn.Open();
        cmd.CommandText = "select * from candidate_login where username ='" + a +"'";

        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                id = (dr.GetInt32(2));


            }


        }
        Label3.Text = id.ToString();

        Session["cid"] = Label3.Text;



       // b = Session["cid"].ToString();
        Label1.Text = a;
        Label2.Text = System.DateTime.Now.ToString();
       // Label3.Text = b;
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {
        switch (e.Item.Value)
        {
            case "IT": Response.Redirect("~/candidatelogin/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Marketing": Response.Redirect("~/candidatelogin/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "HR": Response.Redirect("~/candidatelogin/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Sales": Response.Redirect("~/candidatelogin/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Lecturer": Response.Redirect("~/candidatelogin/by category.aspx?Menu3=" + e.Item.Text);
                break;


            case "Pune": Response.Redirect("~/candidatelogin/bycity.aspx?Menu3=" + e.Item.Text);
                break;
            case "Mumbai": Response.Redirect("~/candidatelogin/bycity.aspx?Menu3=" + e.Item.Text);
                break;
            case "Banglore": Response.Redirect("~/candidatelogin/bycity.aspx?Menu3=" + e.Item.Text);
                break;
            case "Hyderabad": Response.Redirect("~/candidatelogin/bycity.aspx?Menu3=" + e.Item.Text);
                break;

            case "TCS": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "Wipro": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "ACN": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "Infosys": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "Amway": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "NatureShine": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;
            case "Oriflame": Response.Redirect("~/candidatelogin/By Company.aspx?Menu3=" + e.Item.Text);
                break;


            case "Manager": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;

            case "Assistant Manager": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;
            case "Trainee": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;

            case "Developer": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;

            case "Tester": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;
            case "SalesMan": Response.Redirect("~/candidatelogin/by Designation.aspx?Menu3=" + e.Item.Text);
                break;




        }
    }
}
