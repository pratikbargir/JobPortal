<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="CandidateReport1.aspx.cs" Inherits="Report_CandidateReport1" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
        <td style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium">
            All Candidate Report</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="50px" ReportSourceID="CrystalReportSource1" 
                Width="350px" BorderStyle="Solid" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="candidatereport.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
    </tr>
</table>
</asp:Content>

