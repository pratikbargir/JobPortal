<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Job.aspx.cs" Inherits="admin_Job" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 100%;
        }
        .style9
        {
            font-size: medium;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style11
    {
        font-size: medium;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        width: 101px;
    }
        .style10
        {
            font-size: x-large;
            color: #3333CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="5" class="style3" cellpadding="5">
        <tr>
            <td>
                <table align="center" cellspacing="0" class="style3">
                    <tr>
                        <td colspan="2" style="text-align: left" class="style11" valign="middle">
                            &nbsp;&nbsp;
                            <asp:Image ID="Image4" runat="server" Height="45px" 
                                ImageUrl="~/images/job icon1.png" />
&nbsp;&nbsp;
                            <span class="style10">Add Job Details</span></td>
                        <td colspan="2" style="text-align: left" class="style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="text-align: left" class="style9">
                                            <hr /></td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Job Code</td>
                        <td class="style9" colspan="2">
                            <asp:TextBox ID="txtjcode" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td rowspan="10" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Job Title</td>
                        <td class="style9" colspan="2">
                            <asp:DropDownList ID="txtjtitle" runat="server" Height="25px" Width="200px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>HR</asp:ListItem>
                                <asp:ListItem>SALES</asp:ListItem>
                                <asp:ListItem>MARKETING</asp:ListItem>
                                <asp:ListItem>LECTURER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Company Name</td>
                        <td class="style9" colspan="2">
                            <asp:DropDownList ID="txtcname" runat="server" Height="25px" Width="200px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Wipro</asp:ListItem>
                                <asp:ListItem>TCS</asp:ListItem>
                                <asp:ListItem>Infosys</asp:ListItem>
                                <asp:ListItem>Oriflame</asp:ListItem>
                                <asp:ListItem>Nature Shine</asp:ListItem>
                                <asp:ListItem>ACN</asp:ListItem>
                                <asp:ListItem>Amway</asp:ListItem>
                                <asp:ListItem>SiddhivinayakInstitute</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            City</td>
                        <td class="style9" colspan="2">
                            <asp:DropDownList ID="txtjcity" runat="server" Height="25px" Width="200px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Pune</asp:ListItem>
                                <asp:ListItem>Mumbai</asp:ListItem>
                                <asp:ListItem>Hyderabad</asp:ListItem>
                                <asp:ListItem>Banglore</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Designation</td>
                        <td class="style9" colspan="2">
                            <asp:TextBox ID="txtdesign" runat="server" Height="25px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtdesign" ErrorMessage="character only" Font-Size="X-Small" 
                                ValidationGroup="^([\sA-Za-z]+)$"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Minimum Salary</td>
                        <td class="style9" colspan="2">
                            <asp:TextBox ID="txtminsal" runat="server" Height="25px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtminsal" ErrorMessage="number only" Font-Size="X-Small" 
                                ValidationGroup="[0-9]"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Maximum Salary</td>
                        <td class="style9" colspan="2">
                            <asp:TextBox ID="txtmaxsal" runat="server" Height="25px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtmaxsal" ErrorMessage="number only" Font-Size="X-Small" 
                                ValidationGroup="[0-9]"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Experience</td>
                        <td class="style9" colspan="2">
                            <asp:DropDownList ID="drpexp" runat="server" Height="25px" Width="200px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Qualification</td>
                        <td class="style9" colspan="2">
                            <asp:TextBox ID="txtqualify" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center" class="style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="">
                            <asp:Button ID="btnaddnew" runat="server" onclick="btnaddnew_Click" 
                                Text="New" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />&nbsp;
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit"  BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px"  
                                onclick="btnsubmit_Click" />
&nbsp;
                            <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                Text="Update" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px"  />
&nbsp;
                            <asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                                Text="Delete"  BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
                                &nbsp;
                            <asp:Button ID="btnclear" runat="server" Text="Clear"  BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px"  
                                onclick="btnclear_Click" />
                        </td>
                       
                    </tr>
                    
                    <tr>
                        <td colspan="3" class="">
                            <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                                CssClass="style9" ForeColor="Black" GridLines="Vertical" Height="400px" 
                                Width="350px" AllowPaging="True" PageSize="8" 
                                onpageindexchanging="GridView1_PageIndexChanging">
                                <RowStyle BackColor="#F7F7DE" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </td>
                       
                    </tr>
                    
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

