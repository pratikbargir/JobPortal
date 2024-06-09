<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="master_SiteMap1" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 100%;
            text-align: center;
        }
        .style21
        {
            width: 219px;
            text-align: center;
            color: #CC0000;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color: #33CCFF;
        }
        .style22
        {
            width: 219px;
            text-align: left;
        }
        .style24
        {
            width: 15px;
            text-align: left;
            color: #CC0000;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color: #FFFFFF;
        }
        .style25
        {
            width: 15px;
            text-align: left;
        }
        .style27
        {
            width: 181px;
            text-align: center;
            color: #CC0000;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color: #66CCFF;
        }
        .style28
        {
            width: 181px;
            text-align: left;
        }
        .style29
        {
            text-align: left;
            font-size: large;
            font-weight: bold;
        }
        .style30
        {
            width: 190px;
            text-align: center;
            color: #CC0000;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color: #33CCFF;
        }
        .style31
        {
            width: 190px;
            text-align: left;
        }
        .style32
        {
            width: 18px;
            text-align: left;
            color: #CC0000;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color: #FFFFFF;
        }
        .style33
        {
            width: 18px;
            text-align: left;
        }
        .style34
        {
            color: #800000;
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table align="center" class="style4">
        <tr>
            <td>
                <table align="center" cellpadding="1" cellspacing="1" class="style4">
                    <tr>
                        <td class="style29" colspan="1">
                            
                            <asp:Image ID="Image11" runat="server" Height="45px" Width="47px" 
                                ImageUrl="~/images/sitemapicon.png" />
                            &nbsp;<span class="style34">SiteMap</span></td>
                    </tr>
                    <tr>
                        <td class="style30">
                            Genral</td>
                        <td class="style24">
                            &nbsp;</td>
                        <td class="style27">
                            Job Seeker</td>
                        <td class="style32">
                            &nbsp;</td>
                        <td class="style21">
                            Admin</td>
                    </tr>
                    <tr>
                        <td class="style31">
                            <asp:BulletedList ID="BulletedList1" runat="server" 
                                style="font-weight: 700; font-size: large">
                                <asp:ListItem>Home</asp:ListItem>
                                <asp:ListItem>About</asp:ListItem>
                                <asp:ListItem>Job</asp:ListItem>
                                <asp:ListItem>Services</asp:ListItem>
                                <asp:ListItem>Sitemap</asp:ListItem>
                                <asp:ListItem>Contact</asp:ListItem>
                                <asp:ListItem>Login</asp:ListItem>
                            </asp:BulletedList>
                        </td>
                        <td class="style25">
                            <hr size="180" width="1" noshade="noshade" />&nbsp;</td>
                        <td class="style28">
                            <asp:BulletedList ID="BulletedList2" runat="server" Width="152px" 
                                style="font-weight: 700; font-size: large">
                                <asp:ListItem>Manage Profile</asp:ListItem>
                                <asp:ListItem>Job Applied</asp:ListItem>
                                <asp:ListItem>Change Password</asp:ListItem>
                            </asp:BulletedList>
                        </td>
                        <td class="style33">
                            <hr size="180" width="1" noshade="noshade" />&nbsp;</td>
                        <td class="style22">
                            <asp:BulletedList ID="BulletedList3" runat="server" 
                                style="font-size: large; font-weight: 700">
                                <asp:ListItem>Add Company</asp:ListItem>
                                <asp:ListItem>Add Job</asp:ListItem>
                                <asp:ListItem>Manage Candidate</asp:ListItem>
                                <asp:ListItem>Applied Job</asp:ListItem>
                                <asp:ListItem>Report</asp:ListItem>
                                <asp:ListItem>Change Password</asp:ListItem>
                            </asp:BulletedList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style31">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style22">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
        
</asp:Content>

