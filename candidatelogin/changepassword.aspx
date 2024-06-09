<%@ Page Language="C#" MasterPageFile="~/candidatelogin/candidatemaster.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="candidatelogin_changepassword" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 100%;
        }
    .style5
    {
        width: 50%;
        height: 50px;
    }
        .style16
        {
            width: 91px;
        }
        .style12
        {
            width: 335px;
        }
        .style19
        {
            width: 69px;
        }
        .style17
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 91px;
        }
        .style13
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 335px;
        }
        .style11
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 69px;
        }
        .style18
        {
            text-align: center;
            width: 91px;
        }
        .style15
        {
            text-align: center;
            width: 335px;
        }
        .style6
    {
            text-align: center;
            width: 69px;
        }
        .style20
        {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td>
            <table class="style5" align="center" width="20px">
                <tr>
                    <td style="color: #993366" class="style16">
                        &nbsp;</td>
                    <td style="color: #993366; text-align: center;" class="style12">
                        <asp:Image ID="Image4" runat="server" BorderColor="#CC0000" BorderWidth="2px" 
                            Height="200px" ImageUrl="~/images/ChangePassword.png" 
                            style="text-align: center" />
                            <br />
                            
                   
                    </td>
                    <td style="color: #993366" class="style19">
                        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </cc1:ToolkitScriptManager>
                    </td>
                </tr>
                <tr bgcolor="White">
                    <td class="style17">
                        &nbsp;</td>
                    <td class="style13" bgcolor="White" 
                        style="background-color: #FFFFFF; font-size: large; text-align: center;">
                        &nbsp; <span class="style20">Change Password</span>
                        <br />
                        
                       
                        </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextU_nm1" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Username" ></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextO_pass" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Old Password" TextMode="Password" ></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextN_pass" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter New Password" TextMode="Password" ></asp:TextBox>
                        <cc1:PasswordStrength ID="TextN_pass_PasswordStrength" runat="server" 
                            Enabled="True" TargetControlID="TextN_pass">
                        </cc1:PasswordStrength>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:Button ID="BtnSet" runat="server" onclick="BtnSet_Click" 
                             Text="Set" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                        &nbsp;
                        <asp:Button ID="Btnclear" runat="server" Text="Clear"  BackColor="#333333" 
                            Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" onclick="Btnclear_Click1"/>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
            </td>
        </tr>
    </table>
</asp:Content>

