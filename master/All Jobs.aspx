<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="All Jobs.aspx.cs" Inherits="master_All_Jobs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
            height: 100%;
            font-weight: bold;
            color: #CC0000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style19
        {
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #CC0000;
        }
        .style21
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style22
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #CC0000;
        }
        .style24
        {
            color: #CC0000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style25
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style15
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 700;
        }
        .style26
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .style27
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />


      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
        class="style25">&nbsp;</span><span class="style24">&nbsp;</span><span 
        class="style22">&nbsp;&nbsp;&nbsp;</span><span class="style19">&nbsp;&nbsp;</span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;All Jobs</span>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
    RepeatColumns="2" 
                RepeatDirection="Horizontal" ForeColor="Black" Width="70%"  
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellSpacing="2" GridLines="Both" HorizontalAlign="Center" 
        style="font-family: Arial, Helvetica, sans-serif">
        <ItemTemplate>
            <table class="style15" border="2" cellpadding="5" cellspacing="5" frame="box" 
                rules="none">
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image12" runat="server" Height="15px" 
                            ImageUrl="~/images/job1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Category</span></td>
                    <td class="style26">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("jtitle") %>'></asp:Label>
                    </td>
                    <td class="style18">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image13" runat="server" Height="15px" 
                            ImageUrl="~/images/company1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Company Name</span></td>
                    <td class="style26">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                    </td>
                    <td class="style21">
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image14" runat="server" Height="15px" 
                            ImageUrl="~/images/location.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">City</span></td>
                    <td class="style26">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("jcity") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image15" runat="server" Height="15px" 
                            ImageUrl="~/images/designation.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Designation</span></td>
                    <td class="style26">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("jdesignation") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image16" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Minimum Salary</span></td>
                    <td class="style26">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("jminsal") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image17" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Maximum Salary</span></td>
                    <td class="style26">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("jmaxsal") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image18" runat="server" Height="15px" 
                            ImageUrl="~/images/experience.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Experience</span></td>
                    <td class="style26">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("jexperience") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        <b>
                        <span class="style27">
                        <asp:Image ID="Image19" runat="server" Height="15px" 
                            ImageUrl="~/images/qualify1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style27">Qualification</span></td>
                    <td class="style26">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("jqualify") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("jcode") %>' 
                            Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                            ImageUrl="~/images/Apply1.gif" onclick="ImageButton1_Click1" 
                            CommandArgument='<%# Eval("jcode", "{0}") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myconnection %>" 
        SelectCommand="SELECT * FROM [job]"></asp:SqlDataSource>
</asp:Content>

