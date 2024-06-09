<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="interview pdf.aspx.cs" Inherits="company_info_interview_pdf" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 50%;
            height: 50px;
        }
        .style13
        {
            text-align: center;
        }
        .style14
        {
            text-align: left;
        }
        .style16
        {
            text-align: center;
            font-size: 10pt;
            color: #000000;
        }
        .style17
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style12">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                IT Interview Questions:</td>
        </tr>
        <tr>
            <td class="style16">
                IT&nbsp; Interview Questions</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/imagesproject/ITinterview11.pdf">Download PDF 
                1</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="~/imagesproject/ITinterview22.pdf">Download PDF2</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/imagesproject/ITinterview33.pdf">Download PDF 3</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                Sales Interview Questions:</td>
        </tr>
        <tr>
            <td class="style16">
                SALES Interview Questions</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    NavigateUrl="~/imagesproject/SALESinterview.pdf">Download PDF</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                HR Interview Questions:</td>
        </tr>
        <tr>
            <td class="style16">
                HR Interview Questions</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/imagesproject/HRinterview.pdf">Download PDF</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                Lecturer Interview Questions:</td>
        </tr>
        <tr>
            <td style="text-align: center" class="style17">
                LECTURER Interview Questions</td>
            <td style="text-align: center">
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/imagesproject/LECTURERinterview.pdf">Download PDF</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

