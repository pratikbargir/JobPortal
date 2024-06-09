<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CandidateLogin.aspx.cs" Inherits="candidate_login_Candidate_Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
        }
        .style2
        {
            width: 50%;
            height: 50%;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body background="../images/login bg.jpg">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <table class="style1" 
        
        
        border="0" frame="box">
        <tr>
            <td style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif">
                <table align="center" class="style2" >
                    <tr>
                        <td class="style5" colspan="2">
                            
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl="~/images/user-login.jpg" />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:TextBox ID="txtnm" runat="server" Height="30px" Width="200px" placeholder="Enter Username"></asp:TextBox>
                            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:TextBox ID="txtpasswd" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                            
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" colspan="2">
                         
                            <br />
                         
                            <asp:Button ID="btnlogin" runat="server" style="text-align: center; font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif;" 
                                Text="Login" onclick="Button1_Click" BackColor="#666666" ForeColor="White" 
                                Height="30px" Width="200px" />
                        &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                                NavigateUrl="~/master/studregistration.aspx">New User ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
