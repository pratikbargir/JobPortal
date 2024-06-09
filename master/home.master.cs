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

public partial class master_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {
        switch (e.Item.Value)
        {
            case "IT": Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Marketing": Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "HR": Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Sales": Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
                break;
            case "Lecturer": Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
                break;


            case "Pune": Response.Redirect("~/master/bycity.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Mumbai": Response.Redirect("~/master/bycity.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Banglore": Response.Redirect("~/master/bycity.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Hyderabad": Response.Redirect("~/master/bycity.aspx?Menu3=" + e.Item.Text);
                       break;

            case "TCS": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Wipro": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                       break;




            case "ACN": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Infosys": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                      break; 
            case "Amway": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                       break;
            case "NatureShine": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                                break;
           // case "NatureShine": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
             //          break;
            case "Oriflame": Response.Redirect("~/master/By Company.aspx?Menu3=" + e.Item.Text);
                       break;
           



            case "Manager": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
            
            case "Assistant Manager": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
            case "Trainee": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
           
            case "Developer": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
       
            case "Tester": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
            case "SalesMan": Response.Redirect("~/master/by Designation.aspx?Menu3=" + e.Item.Text);
                       break;
            
            
       
       
        }
        //if(Menu3.Items [0].Selected==true )
        //Response.Redirect("~/master/By location.aspx?Menu3=" + e.Item.Text);
        //if (Menu3.Items[1].Selected == true)
        //    Response.Redirect("~/master/by category.aspx?Menu3=" + e.Item.Text);
    }
}
