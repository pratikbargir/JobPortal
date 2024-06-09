<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="by company.aspx.cs" Inherits="master_by_company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 100%;
        }
        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style18
        {
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
        }
        .style19
        {
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style20
        {
            font-size: large;
            color: #CC0000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style22
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
        .style23
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .style24
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />


      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style22">&nbsp;</span><span class="style20">


      Jobs search by company</span>
    <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" RepeatColumns="2" 
                RepeatDirection="Horizontal" ForeColor="Black" Width="70%"  
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellSpacing="2" GridLines="Both" 
    onselectedindexchanged="DataList1_SelectedIndexChanged" 
        HorizontalAlign="Center">
        <EditItemStyle Font-Bold="True" Font-Names="Arial Narrow" />
        <ItemTemplate>
            <table class="style15" cellspacing="5" border="2" cellpadding="5" frame="box" 
                rules="none">
                <tr>
                    <td class="style18">
                        <b>
                        <span class="style24">
                        <asp:Image ID="Image12" runat="server" Height="15px" 
                            ImageUrl="~/images/job1.png" Width="15px" />
                        &nbsp;&nbsp;&nbsp;Category</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("jtitle") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>
                        <span class="style24">
                        <asp:Image ID="Image13" runat="server" Height="15px" 
                            ImageUrl="~/images/company1.png" Width="15px" />
                        &nbsp;&nbsp;Company Name</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>&nbsp;<span class="style24"><asp:Image ID="Image14" runat="server" 
                            Height="15px" ImageUrl="~/images/location.png" Width="15px" />
                        &nbsp;&nbsp;City</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("jcity") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>&nbsp;<span class="style24"><asp:Image ID="Image15" runat="server" 
                            Height="15px" ImageUrl="~/images/designation.png" Width="15px" />
                        &nbsp;&nbsp;Designation</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("jdesignation") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>
                        <span class="style24">
                        <asp:Image ID="Image16" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp;Minimum Salary</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("jminsal") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>
                        <span class="style24">
                        <asp:Image ID="Image17" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp;Maximum Salary</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("jmaxsal") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>
                        <span class="style24">
                        <asp:Image ID="Image18" runat="server" Height="15px" 
                            ImageUrl="~/images/experience.png" Width="15px" />
                        &nbsp; Experience(in years)</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("jexperience") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        <b>&nbsp;<span class="style24"><asp:Image ID="Image19" runat="server" 
                            Height="15px" ImageUrl="~/images/qualify1.png" Width="15px" />
                        &nbsp; Qualification</span></b></td>
                    <td class="style23">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("jqualify") %>'></asp:Label>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                            ImageUrl="~/images/Apply1.gif" onclick="ImageButton1_Click" 
                            CommandArgument='<%# Eval("jcode", "{0}") %>' />
                    </td>
                    <td class="style17">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myconnection %>" 
        SelectCommand="SELECT * FROM [job] WHERE ([compname] = @compname)">
        <SelectParameters>
            <asp:QueryStringParameter Name="compname" QueryStringField="Menu3" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

