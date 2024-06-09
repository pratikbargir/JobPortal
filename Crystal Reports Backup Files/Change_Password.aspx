<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="admin_Change_Password" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
        height: 100px;
    }
    .style5
    {
        width: 50%;
        height: 50px;
    }
    .style6
    {
            text-align: center;
            width: 69px;
        }
        .style7
        {
            height: 19px;
        }
        .style8
        {
            height: 121px;
        }
        .style11
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 69px;
        }
        .style12
        {
            width: 335px;
        }
        .style13
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 335px;
        }
        .style14
        {
            text-align: center;
            width: 265px;
        }
        .style15
        {
            text-align: center;
            width: 335px;
        }
        .style16
        {
            width: 91px;
        }
        .style17
        {
            font-family: "Franklin Gothic Demi";
            font-weight: bold;
            color: #006600;
            font-size: x-large;
            width: 91px;
        }
        .style18
        {
            text-align: center;
            width: 91px;
        }
        .style19
        {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table >
    <body>

    
    

    <table class="style4" >
    
    <body>

    <tr>
        <td style="text-align: center" class="style7" >
            </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <table class="style5" align="center" width="20px">
                <tr>
                    <td style="color: #993366" class="style16">
                        &nbsp;</td>
                    <td style="color: #993366" class="style12">
                        <asp:Image ID="Image4" runat="server" BorderColor="#CC0000" BorderWidth="2px" 
                            Height="200px" ImageUrl="~/images/ChangePassword.png" />
                            <br />
                            
                   
                    </td>
                    <td style="color: #993366" class="style19">
                        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </cc1:ToolkitScriptManager>
                                            </td>
                </tr>
                <tr>
                    <td class="style17">
                        &nbsp;</td>
                    <td class="style13">
                        Change Password
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
                        <cc1:TextBoxWatermarkExtender ID="TextU_nm1_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="TextU_nm1" 
                            WatermarkText="Enter Username">
                        </cc1:TextBoxWatermarkExtender>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextO_pass" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter Old Password" ></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="TextO_pass_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="TextO_pass" 
                            WatermarkText="Enter Old Password">
                        </cc1:TextBoxWatermarkExtender>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextN_pass" runat="server" Height="30px" Width="200px" 
                                placeholder="Enter New Password" ></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="TextN_pass_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="TextN_pass" 
                            WatermarkText="Enter New Password">
                        </cc1:TextBoxWatermarkExtender>
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
                        <asp:Button ID="Btnclear" runat="server" Text="Clear"  BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px"/>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" class="style8">
            </td>
    </tr>
    </body>
</body>
</table>
</table>


</asp:Content>

