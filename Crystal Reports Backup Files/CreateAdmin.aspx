<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="CreateAdmin.aspx.cs" Inherits="admin_CreateAdmin" Title="Untitled Page" %>

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
            width: 333px;
        }
        .style7
        {
            color: #990000;
            font-weight: bold;
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style8
        {
            font-weight: bold;
            font-size: large;
            text-align: center;
        }
        .style9
        {
            font-weight: bold;
            font-size: large;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
        <tr>
            <td>
                <table align="left" cellpadding="5" cellspacing="10" class="style4">
                    <tr>
                        <td class="style5" rowspan="6">
                            &nbsp;</td>
                        <td class="style7" style="text-align: center">
                            Add Admin</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td rowspan="6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image4" runat="server" BorderColor="Black" BorderWidth="2px" 
                                Height="179px" ImageUrl="~/images/JPRS-banner-icon.png" Width="205px" 
                                BackColor="#0066CC" />
                        <br />
                        <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td class="style8" >
                            &nbsp;&nbsp; 
                            <asp:TextBox ID="TextU_nm1" runat="server" Height="35px" 
                                placeholder="Enter Username" Width="220px" style="text-align: left"></asp:TextBox>
                        </td>
                        <td class="style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextU_nm1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextPass" runat="server" Height="35px" 
                                placeholder="Enter Password" Width="220px"></asp:TextBox>
                            <cc1:PasswordStrength ID="TextPass_PasswordStrength" runat="server" 
                                Enabled="True" TargetControlID="TextPass">
                            </cc1:PasswordStrength>
                            <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </cc1:ToolkitScriptManager>
                        </td>
                        <td class="style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;
                            <asp:TextBox ID="TextC_pass" runat="server" Height="35px" 
                                placeholder="Confirm Password" Width="220px"></asp:TextBox>
                        </td>
                        <td class="style9">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextPass" ControlToValidate="TextC_pass" 
                                ErrorMessage="password and confirm password must be match." Font-Size="Small" 
                                style="text-align: left"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnCreate" runat="server" 
                                style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #FFFFFF; background-color: #003399" 
                                Text="Create" Width="150px" onclick="BtnCreate_Click" />&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnClear" runat="server" 
                                style="color: #FFFFFF; font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-color: #003399" 
                                Text="Clear" Width="150px" onclick="BtnClear_Click" />
                        </td>
                        <td class="style9">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

