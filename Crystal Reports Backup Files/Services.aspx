<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="master_Services" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 90%;
            height: 100%;
        }
        .style16
        {
            font-size: x-large;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            color: #000099;
        }
        .style17
        {
            font-size: medium;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
        }
        .style18
        {
            font-size: medium;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="6" class="style15">
        <tr>
            <td colspan="4" style="text-align: left" valign="middle">
                <asp:Image ID="Image11" runat="server" Height="50px" 
                    ImageUrl="~/images/servicesicon.png" />
&nbsp;&nbsp;&nbsp;&nbsp; <span class="style16">Services Provided By Us....<br />
                <br />
                </span>
            </td>
        </tr>
        <tr>
            <td class="style17" style="text-align: left">
                Cover Letter Sample</td>
            <td class="style17" style="text-align: left" rowspan="9">
                <hr size="280" width="3" noshade="noshade" />&nbsp;</td>
            <td class="style18">
                Resume Sample</td>
                 <td class="style17" style="text-align: left" rowspan="9">
                <hr size="280" width="3" noshade="noshade" />&nbsp;</td>
            <td class="style17" style="text-align: left">
                Interview Question</td>
            <td class="style17" style="text-align: left" rowspan="9">
                <hr size="280" width="3" noshade="noshade" /></td>
            <td class="style17" style="text-align: left">
                FAQ</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink12" runat="server" 
                    NavigateUrl="~/master/coverletter/HRcoverletter.aspx" 
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Cover 
                Letter For HR</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink17" runat="server" 
                    NavigateUrl="~/master/resume/HRresume.aspx" 
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">HR 
                Resume</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink22" runat="server" 
                    NavigateUrl="~/imagesproject/HRinterview.pdf" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Interview 
                Questions for HR</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink30" runat="server" 
                    NavigateUrl="~/master/FAQ/FAQ-HR.aspx" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">FAQ-HR</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink13" runat="server" 
                    NavigateUrl="~/master/coverletter/ITcoverletter.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Cover 
                Letter For IT</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink18" runat="server" 
                    NavigateUrl="~/master/resume/ITresume.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">IT 
                Resume</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink23" runat="server" 
                    NavigateUrl="~/imagesproject/ITinterview11.pdf" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Interview 
                Questions for IT</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink31" runat="server" 
                    NavigateUrl="~/master/FAQ/FAQ-IT.aspx" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">FAQ-IT</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink14" runat="server" 
                    NavigateUrl="~/master/coverletter/MARKETINGcoverletter.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Cover 
                Letter For Marketing</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink19" runat="server" 
                    NavigateUrl="~/master/resume/MARKETINGresume.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Marketing 
                Resume</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink24" runat="server" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000" 
                    NavigateUrl="~/imagesproject/ITinterview33.pdf">Interview 
                Questions for Marketing</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink32" runat="server" 
                    NavigateUrl="~/master/FAQ/FAQ-marketing.aspx" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">FAQ-Marketing</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink15" runat="server" 
                    NavigateUrl="~/master/coverletter/SALEScoverletter.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Cover 
                Letter For Sales</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink20" runat="server" 
                    NavigateUrl="~/master/resume/SALESresume.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Sales 
                Resume</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink25" runat="server" 
                    NavigateUrl="~/imagesproject/SALESinterview.pdf" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Interview 
                Questions for Sales</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink33" runat="server" 
                    NavigateUrl="~/master/FAQ/FAQ-Sales.aspx" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">FAQ-Sales</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink16" runat="server" 
                    NavigateUrl="~/master/coverletter/LECTURERcoverletter.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Cover 
                Letter For Lecturer</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink21" runat="server" 
                    NavigateUrl="~/master/resume/LECTURERresume.aspx" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Lecturer 
                Resume</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink26" runat="server" 
                    NavigateUrl="~/imagesproject/LECTURERinterview.pdf" 
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">Interview 
                Questions for Lecturer</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink34" runat="server" 
                    NavigateUrl="~/master/FAQ/FAQ-Lecturer.aspx" 
                    
                    
                    style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #000000">FAQ-Lecturer</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

