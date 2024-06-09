<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="bycity.aspx.cs" Inherits="master_bycity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
        width: 100%;
        height: 100%;
    }
        .style16
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #CC0000;
        }
        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #CC0000;
        }
        .style18
        {
            font-size: large;
            color: #CC0000;
        }
        .style19
        {
            color: #CC0000;
        }
        .style20
        {
            font-size: large;
        }
        .style21
        {
            font-size: medium;
            height: 39px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style22
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style23
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style24
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style25
        {
            font-size: medium;
            height: 39px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />


      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
        class="style19">&nbsp;</span><span class="style18">&nbsp;</span><span 
        class="style17">&nbsp;</span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Jobs search by location</span>
  <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myconnection %>" 
        SelectCommand="SELECT * FROM [job] WHERE ([jcity] = @jcity)">
        <SelectParameters>
            <asp:QueryStringParameter Name="jcity" QueryStringField="Menu3" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
    DataSourceID="SqlDataSource1"  RepeatColumns="2" 
                RepeatDirection="Horizontal" ForeColor="Black" Width="100%" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellSpacing="2" GridLines="Both"
        onselectedindexchanged="DataList1_SelectedIndexChanged" >
        <ItemTemplate>
            <table class="style15" border="2" cellpadding="5" cellspacing="5" frame="box" 
                rules="none">
                <tr>
                    <td class="style25">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image12" runat="server" Height="15px" 
                            ImageUrl="~/images/job1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Category</span></b></td>
                    <td class="style21">
                        <b>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("jtitle") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image13" runat="server" Height="15px" 
                            ImageUrl="~/images/company1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Company Name</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image14" runat="server" Height="15px" 
                            ImageUrl="~/images/location.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">City</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("jcity") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image15" runat="server" Height="15px" 
                            ImageUrl="~/images/designation.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Designation</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("jdesignation") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image16" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Minimum Salary</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("jminsal") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image17" runat="server" Height="15px" 
                            ImageUrl="~/images/salary.jpg" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Maximum Salary</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("jmaxsal") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image18" runat="server" Height="15px" 
                            ImageUrl="~/images/experience.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Experience</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("jexperience") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <b><b>
                        <span class="style23">
                        <asp:Image ID="Image19" runat="server" Height="15px" 
                            ImageUrl="~/images/qualify1.png" Width="15px" />
                        &nbsp;&nbsp; </span> </b><span class="style23">Qualification</span></b></td>
                    <td class="style22">
                        <b>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("jqualify") %>'></asp:Label>
                        </b>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style20">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                            ImageUrl="~/images/Apply1.gif" onclick="ImageButton1_Click" />
                    </td>
                    <td class="style20">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
</p>
</asp:Content>

