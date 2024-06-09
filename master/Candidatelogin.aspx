<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="Candidatelogin.aspx.cs" Inherits="master_Candidatelogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <br />
    <br />
    <br />
    <br />
   
    <table class="style1" 
        
        
        border="0" frame="box">
        <tr>
            <td style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif">
                <table align="center" class="style2" border="1" frame="void" rules="cols">
                    <tr>
                        <td class="style5">
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl="~/images/user-login.jpg" />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:TextBox ID="txtnm" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Username" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:TextBox ID="txtpasswd" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Password" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnlogin" runat="server" style="text-align: center; font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif;" 
                                Text="Login" onclick="btnlogin_Click" BackColor="#666666" ForeColor="White" 
                                Height="30px" Width="200px" />
                        &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                                NavigateUrl="~/master/studregistration.aspx" style="color: #000000">New User ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

