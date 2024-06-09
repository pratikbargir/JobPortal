<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="admin_Company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 100%;
        }
        .style4
        {
            background-color: #FFFFFF;
        }
        .style5
        {
            color: #0000FF;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style7
        {
            font-size: medium;
        }
        .style8
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
            background-color: #FFFFFF;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style10
        {
            color: #0000FF;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellspacing="0" class="style3">
        <tr>
            <td>
                <table align="center" cellspacing="0" 
                    
                    style="border: thin solid #000000; background-color: #FFFFFF; font-size: medium;">
                    <tr>
                        <td class="style10" colspan="2" style="text-align: center">
                            Company</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Company Code</td>
                        <td class="style4">
                            <asp:TextBox ID="txtccode" runat="server" style="background-color: #FFFFFF"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Company Name</td>
                        <td class="style4">
                            <asp:TextBox ID="txtcname" runat="server" 
                                style="font-weight: 700; background-color: #FFFFFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtcname" ErrorMessage="character only" Font-Size="X-Small" 
                                ValidationGroup="^([\sA-Za-z]+)$"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Head Office City</td>
                        <td class="style4">
                            <asp:TextBox ID="txtccity" runat="server" style="background-color: #FFFFFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtccity" ErrorMessage="character only" Font-Size="X-Small" 
                                ValidationGroup="^([\sA-Za-z]+)$"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Head Office Contact</td>
                        <td class="style4">
                            <asp:TextBox ID="txtccontact" runat="server" style="background-color: #FFFFFF" 
                                MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtccontact" ErrorMessage="mobile number must be 10 digit" 
                                Font-Size="X-Small" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            No.of Branch</td>
                        <td class="style4">
                            <asp:DropDownList ID="drpbranch" runat="server" 
                                style="background-color: #FFFFFF">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Email ID</td>
                        <td class="style4">
                            <asp:TextBox ID="txtcemail" runat="server" style="background-color: #FFFFFF"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtcemail" ErrorMessage="Email must in correct format" 
                                Font-Size="X-Small" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Website</td>
                        <td class="style4">
                            <asp:TextBox ID="txtcwebsite" runat="server" style="background-color: #FFFFFF"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Company type</td>
                        <td class="style4">
                            <asp:DropDownList ID="drpctype" runat="server" 
                                style="background-color: #FFFFFF">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>HR</asp:ListItem>
                                <asp:ListItem>MARKETING</asp:ListItem>
                                <asp:ListItem>SALES</asp:ListItem>
                                <asp:ListItem>LECTURER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" colspan="2" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" colspan="2" style="text-align: center">
                            <span class="style6"><span class="style7">
                            <asp:Button ID="btnaddnew" runat="server"  
                                onclick="btnaddnew_Click" Text="Add New" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                            <asp:Button ID="btnsubmit" runat="server" 
                                Text="Submit" 
                                onclick="btnsubmit_Click" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                            </span></span><span class="style7">&nbsp;
                            </span><span class="style6"><span class="style7">
                            <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" Text="Update"  
                                 
                                 BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                            </span></span><span class="style7">&nbsp;&nbsp;<br />
                            </span><span class="style6"><span class="style7">
                            <asp:Button ID="btndelete" runat="server"  
                                onclick="btndelete_Click" Text="Delete" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                            </span></span>&nbsp;<span class="style6"><span class="style7"><asp:Button ID="btnclear" runat="server" 
                                 Text="Clear" 
                                onclick="btnclear_Click" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                            </span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2" style="text-align: center">
                            <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="style7">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

