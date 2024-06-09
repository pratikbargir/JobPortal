<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="feedbackreport.aspx.cs" Inherits="Report_feedbackreport" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 100%;
        height: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style6">
    <tr>
        <td class="style3" style="text-align: center">
            Feedback Report</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="1115px" ReportSourceID="CrystalReportSource1" 
                Width="886px" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="feedbackreport.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
    </tr>
</table>
</asp:Content>

