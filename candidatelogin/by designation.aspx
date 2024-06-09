<%@ Page Language="C#" MasterPageFile="~/candidatelogin/candidatemaster.master" AutoEventWireup="true" CodeFile="by designation.aspx.cs" Inherits="master_by_designation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 100%;
        }
        .style16
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
            color: #CC0000;
        }
        .style18
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #CC0000;
        }
        .style19
        {
            color: #CC0000;
            font-weight: bold;
        }
        .style20
        {
            color: #CC0000;
        }
        .style21
        {
            font-size: medium;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />


      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
         class="style20">&nbsp;</span><span class="style19">&nbsp;</span><span 
         class="style18">&nbsp;</span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Jobs search by designation</span>
   <asp:DataList ID="DataList1" runat="server" 
    DataSourceID="SqlDataSource1" RepeatColumns="2" 
                RepeatDirection="Horizontal" ForeColor="Black" Width="100%" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellSpacing="2" GridLines="Both" 
    onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="style15" border="2" cellpadding="5" cellspacing="5" frame="box" 
                rules="none">
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image12" runat="server" Height="15px" 
                            ImageUrl="~/images/job1.png" Width="15px" />
                        &nbsp;&nbsp; </b>Category</td>
                    <td class="style21">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("jtitle") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image13" runat="server" Height="15px" 
                            ImageUrl="~/images/company1.png" Width="15px" />
                        &nbsp;&nbsp; </b>Company Name</td>
                    <td class="style21">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image14" runat="server" Height="15px" 
                            ImageUrl="~/images/location.png" Width="15px" />
                        &nbsp;&nbsp; </b>City</td>
                    <td class="style21">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("jcity") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image15" runat="server" Height="15px" 
                            ImageUrl="~/images/designation.png" Width="15px" />
                        &nbsp;&nbsp; </b>Designation</td>
                    <td class="style21">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("jdesignation") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image16" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </b>Minimum Salary</td>
                    <td class="style21">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("jminsal") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image17" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        </b>Maximum Salary</td>
                    <td class="style21">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("jmaxsal") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image18" runat="server" Height="15px" 
                            ImageUrl="~/images/experience.png" Width="15px" />
                        &nbsp;&nbsp; </b>Experience</td>
                    <td class="style21">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("jexperience") %>'></asp:Label>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <b>
                        <asp:Image ID="Image19" runat="server" Height="15px" 
                            ImageUrl="~/images/qualify1.png" Width="15px" />
                        &nbsp;&nbsp; </b>Qualification</td>
                    <td class="style21">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("jqualify") %>'></asp:Label>
                    </td>
                    <td class="style21">
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
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myconnection %>" 
        
    SelectCommand="SELECT * FROM [job] WHERE ([jdesignation] = @jdesignation2)">
        <SelectParameters>
            <asp:QueryStringParameter Name="jdesignation2" QueryStringField="Menu3" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

