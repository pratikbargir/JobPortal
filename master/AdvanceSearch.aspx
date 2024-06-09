<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="AdvanceSearch.aspx.cs" Inherits="master_Advance_Search" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        .style28
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style29
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style30
        {
            font-size: small;
            font-weight: bold;
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
        .style33
        {
            font-size: medium;
        }
        .style34
        {
            font-size: large;
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
                            <span class="style28"><span class="style29"><span class="style30">
                            <span class="style33"><span class="style34"><span class="style32">
                            <asp:DropDownList ID="DropCat" runat="server" Height="25px" Width="200px" 
                                DataSourceID="SqlDataSource1" DataTextField="jtitle" 
                                DataValueField="jtitle">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropCat_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropCat">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></span></span>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                onselecting="SqlDataSource1_Selecting" 
                                SelectCommand="SELECT DISTINCT [jtitle] FROM [job]"></asp:SqlDataSource>
                            
                            <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </cc1:ToolkitScriptManager>
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
                            <span class="style28"><span class="style29"><span class="style30">
                            <span class="style33"><span class="style34"><span class="style32">
                            <asp:DropDownList ID="DropComp" runat="server" 
                                DataSourceID="SqlDataSource6" DataTextField="compname" 
                                DataValueField="compname" Width="200px" Height="25px">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropComp_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropComp">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></span></span>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
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
                            <span class="style28"><span class="style29"><span class="style30">
                            <span class="style33"><span class="style34"><span class="style32">
                            <asp:DropDownList ID="DropPost" runat="server" Height="25px" Width="200px" 
                                DataSourceID="SqlDataSource2" DataTextField="Designation" 
                                DataValueField="Designation">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropPost_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropPost">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></span></span>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [Designation] FROM [job]">
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
                            <span class="style28"><span class="style29"><span class="style30">
                            <span class="style33"><span class="style34"><span class="style32">
                            <asp:DropDownList ID="DropExSalary1" runat="server" Height="25px" Width="100px" 
                                DataSourceID="SqlDataSource3" DataTextField="jminsal" 
                                DataValueField="jminsal">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropExSalary1_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropExSalary1">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></span></span>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jminsal] FROM [job]"></asp:SqlDataSource>
                            <b><span class="style29"><span class="style32">&nbsp;to
                            <span class="style33"><span class="style34">
                            <asp:DropDownList ID="DropExSalary2" runat="server" 
                                onselectedindexchanged="DropDownList6_SelectedIndexChanged" Height="25px" 
                                Width="100px" DataSourceID="SqlDataSource4" DataTextField="jmaxsal" 
                                DataValueField="jmaxsal">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropExSalary2_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropExSalary2">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></b>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [jmaxsal] FROM [job]"></asp:SqlDataSource>
                            <span class="style31">&nbsp;as per month.</span></td>
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
                            <span class="style28"><span class="style29"><span class="style30">
                            <span class="style33"><span class="style34"><span class="style32">
                            <asp:DropDownList ID="DropLocation" runat="server" Width="200px" Height="25px" 
                                DataSourceID="SqlDataSource5" DataTextField="city" DataValueField="city" 
                                onselectedindexchanged="DropLocation_SelectedIndexChanged">
                            </asp:DropDownList>
                            <cc1:DropShadowExtender ID="DropLocation_DropShadowExtender" runat="server" 
                                Enabled="True" TargetControlID="DropLocation">
                            </cc1:DropShadowExtender>
                            </span></span></span></span></span></span>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                                SelectCommand="SELECT DISTINCT [city] FROM [job]"></asp:SqlDataSource>
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
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
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
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                                ImageUrl="~/images/Apply1.gif" 
                                Width="70px" onclick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>

