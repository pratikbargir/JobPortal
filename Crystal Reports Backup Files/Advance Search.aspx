<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="Advance Search.aspx.cs" Inherits="master_Advance_Search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 100%;
        }
        .style16
        {
            text-align: justify;
    }
        .style17
        {
            width: 179px;
            text-align: left;
        }
        .style18
        {
            width: 179px;
            text-align: center;
        }
        .style19
        {
            text-align: justify;
            width: 37px;
        }
        .style20
        {
            width: 37px;
            text-align: center;
        }
        .style21
        {
            width: 37px;
            text-align: center;
        }
        .style22
        {
            width: 179px;
            text-align: left;
            height: 59px;
        }
        .style23
        {
            width: 37px;
            text-align: center;
            height: 59px;
        }
        .style24
        {
            height: 59px;
            font-weight: bold;
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style25
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #660033;
            font-weight: bold;
            font-size: x-large;
            }
        .style26
        {
            width: 179px;
            text-align: left;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
        .style27
        {
            width: 179px;
            text-align: left;
            height: 59px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
        .style29
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style31
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: small;
        }
        .style32
        {
            font-size: small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15" style:align="center">
    
        <tr>
            <td>
                <table class="style15" width="100" cellpadding="5" cellspacing="5" 
                    class="style17" style="border: medium solid #FF0000">
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style16" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image18" runat="server" Height="39px" 
                                ImageUrl="~/images/advanced-search.png" Width="40px" />
                        &nbsp;<span class="style25">Advance Search:</span></td>
                    </tr>
                    <tr>
                        <td class="style22">
                            </td>
                        <td class="style23">
                            <asp:Image ID="Image13" runat="server" Height="15px" 
                                ImageUrl="~/images/job 1.png" Width="15px" BorderWidth="1px" />
                        </td>
                        <td class="style27">
                            Category:</td>
                        <td class="style24">
                            <asp:DropDownList ID="drpcategory" runat="server" DataSourceID="SqlDataSource6" 
                                DataTextField="jtitle" DataValueField="jtitle" Height="25px" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jtitle] FROM [job]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style20">
                            <asp:Image ID="Image14" runat="server" Height="15px" 
                                ImageUrl="~/images/company1.png" Width="15px" BorderWidth="1px" />
                        </td>
                        <td class="style26">
                            Company</td>
                        <td class="style31">
                            <asp:DropDownList ID="drpcompany" runat="server" DataSourceID="SqlDataSource7" 
                                DataTextField="compname" DataValueField="compname" Height="25px" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [compname] FROM [job]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style20">
                            <asp:Image ID="Image15" runat="server" Height="15px" 
                                ImageUrl="~/images/designation.png" Width="15px" BorderWidth="1px" />
                        </td>
                        <td class="style26">
                            Post:</td>
                        <td class="style31">
                            <asp:DropDownList ID="drpdesignation" runat="server" 
                                DataSourceID="SqlDataSource8" DataTextField="jdesignation" 
                                DataValueField="jdesignation" Height="25px" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jdesignation] FROM [job]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style20">
                            <asp:Image ID="Image16" runat="server" Height="15px" 
                                ImageUrl="~/images/salary.jpg" Width="15px" BorderWidth="1px" />
                        </td>
                        <td class="style26">
                            Expected Salary:</td>
                        <td class="style31">
                            <asp:DropDownList ID="drpminsal" runat="server" DataSourceID="SqlDataSource9" 
                                DataTextField="jminsal" DataValueField="jminsal" Height="25px" Width="200px">
                            </asp:DropDownList>
                            <b><span class="style29"><span class="style32">&nbsp;to
                            <asp:DropDownList ID="drpmaxsal" runat="server" DataSourceID="SqlDataSource10" 
                                DataTextField="jmaxsal" DataValueField="jmaxsal" Height="25px" Width="200px">
                            </asp:DropDownList>
                            </span></span></b>
                            <span class="style31">&nbsp;as per month.</span><asp:SqlDataSource 
                                ID="SqlDataSource9" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jminsal] FROM [job]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jmaxsal] FROM [job]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style20">
                            <asp:Image ID="Image17" runat="server" Height="15px" 
                                ImageUrl="~/images/location.png" Width="15px" BorderWidth="1px" />
                        </td>
                        <td class="style26">
                            Location:</td>
                        <td class="style31">
                            <asp:DropDownList ID="drplocation" runat="server" 
                                DataSourceID="SqlDataSource11" DataTextField="jcity" DataValueField="jcity" 
                                Height="25px" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jcity] FROM [job]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="BtnSearch" runat="server" Text="Search" 
                               BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" onclick="BtnSearch_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="apply">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked="<%# false %>" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Location" HeaderText="location" />
                                    <asp:BoundField DataField="jcode" HeaderText="Jcode" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="<%# false %>" />
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <br />
                            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                GridLines="Horizontal">
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <AlternatingItemStyle BackColor="#F7F7F7" />
                                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <ItemTemplate>
                                    <asp:Button ID="Button2" runat="server" Text="Button" />
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                                ImageUrl="~/images/Apply1.gif" onclick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>

