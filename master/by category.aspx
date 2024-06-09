<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="by category.aspx.cs" Inherits="master_by_category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 100%;
            font-size: large;
            font-weight: 700;
        }
        .style16
        {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #CC0000;
        }
        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #CC0000;
        }
        .style18
        {
            color: #CC0000;
        }
        .style19
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style20
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />


      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
        class="style18">&nbsp;</span><span class="style17">&nbsp;</span><span 
        class="style16"> &nbsp;Jobs search by category</span>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
    DataSourceID="SqlDataSource1"  RepeatColumns="2" 
                RepeatDirection="Horizontal" ForeColor="Black" Width="100%" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellSpacing="2" GridLines="Both"
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
        style="font-family: Arial, Helvetica, sans-serif" >
        <ItemTemplate>
            <table class="style15" border="2" cellpadding="5" cellspacing="5" frame="box" 
                rules="none">
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image12" runat="server" Height="15px" 
                            ImageUrl="~/images/job1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Category</span></td>
                    <td class="style20">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("jtitle") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image13" runat="server" Height="15px" 
                            ImageUrl="~/images/company1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Company Name</span></td>
                    <td class="style20">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image14" runat="server" Height="15px" 
                            ImageUrl="~/images/location.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">City</span></td>
                    <td class="style20">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("jcity") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image15" runat="server" Height="15px" 
                            ImageUrl="~/images/designation.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Designation</span></td>
                    <td class="style20">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("jdesignation") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image16" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Minimum Salary</span></td>
                    <td class="style20">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("jminsal") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image17" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Maximum Salary</span></td>
                    <td class="style20">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("jmaxsal") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image18" runat="server" Height="15px" 
                            ImageUrl="~/images/experience.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Experience</span></td>
                    <td class="style20">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("jexperience") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        <b>
                        <span class="style19">
                        <asp:Image ID="Image19" runat="server" Height="15px" 
                            ImageUrl="~/images/qualify1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style19">Qualification</span></td>
                    <td class="style20">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("jqualify") %>'></asp:Label>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                            ImageUrl="~/images/Apply1.gif" onclick="ImageButton1_Click" 
                            CommandArgument='<%# Eval("jcode", "{0}") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myconnection %>" 
        SelectCommand="SELECT * FROM [job] WHERE ([jtitle] = @jtitle)">
        <SelectParameters>
            <asp:QueryStringParameter Name="jtitle" QueryStringField="Menu3" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

