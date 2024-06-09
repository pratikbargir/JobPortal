<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="Get In Touch.aspx.cs" Inherits="master_Get_In_Touch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        height: 100%;
    }
        .style15
        {
            width: 70%;
            height: 100%;
        }
        .style16
        {
            color: #6600FF;
        }
        .style17
        {
            width: 100%;
            height: 100%;
            font-weight: 700;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style18
    {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="15" class="style15">
        <tr>
            <td>
                <asp:Image ID="Image11" runat="server" Height="141px" 
                    ImageUrl="~/images/contact.png" Width="504px" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td rowspan="5">
                <table cellpadding="5" cellspacing="10" class="style17">
                    <tr>
                        <td colspan="2">
                            Drop Me A Line<br />
                                            <hr /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Name</td>
                                            <td>
                        <asp:TextBox ID="txtnm" runat="server" style="background-color: #FFFFFF" Font-Bold="True" 
                                                    Font-Names="Arial Black" Height="30px" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Contact </td>
                                            <td>
                        <asp:TextBox ID="txtcontact" runat="server" style="background-color: #FFFFFF" 
                            MaxLength="10" Height="30px" Width="200px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ControlToValidate="txtcontact" ErrorMessage="Number must be of 10 digit" 
                                                    Font-Size="Small" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email</td>
                                            <td>
                        <asp:TextBox ID="txtemail" runat="server" style="background-color: #FFFFFF" Height="30px" 
                                                 Width="200px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txtemail" ErrorMessage="Email must in correct format" 
                                                    Font-Size="Small" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Message</td>
                                            <td>
                        <asp:TextBox ID="txtmsg" runat="server" style="background-color: #FFFFFF" 
                            TextMode="MultiLine" Rows="5" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: right">
                        <asp:Button ID="btnsend" runat="server" onclick="btnsend_Click" Text="Send" Font-Bold="True" 
                                                    Font-Names="Arial Black" Width="130px" BackColor="Maroon" 
                                                    ForeColor="White" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    align="left"><br />
                                    &nbsp;<span class="style18">Contact Details</span><br /><hr width="504" />
                                </td>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    align="left">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium">
                                    <asp:Image ID="Image12" runat="server" Height="20px" 
                                        ImageUrl="~/images/addicon.png" />
&nbsp; Address : <span class="style16">102,Sanket Complex,</span><br class="style16" />
                                    <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Near toranvali Bazar,Sangli</span></td>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                    <asp:Image ID="Image13" runat="server" Height="20px" 
                                        ImageUrl="~/images/emailicon.png" />
&nbsp;&nbsp; E-Mail : <span class="style16">infotechjobs52@gmail.com</span><br class="style16" />
                                </td>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                    <asp:Image ID="Image14" runat="server" Height="20px" 
                                        ImageUrl="~/images/phoneicon.png" />
                                    &nbsp;&nbsp; Phone : <span class="style16">9896854472</span></td>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                    &nbsp;</td>
                            </tr>
                        </table>
    <table cellspacing="0" class="style2">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

