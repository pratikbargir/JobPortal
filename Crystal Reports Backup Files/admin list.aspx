<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin list.aspx.cs" Inherits="Report_admin_list" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 100%;
        height: 100%;
    }
	.ada5c5edb7-184d-444a-acff-c8bad10816a3-0 {border-color:#000000;border-left-width:0;border-right-width:0;border-top-width:0;border-bottom-width:0;}
	.fcbb0ef068-1416-4b67-aff7-c7c0561265df-0 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;text-decoration:underline;}
	.fcbb0ef068-1416-4b67-aff7-c7c0561265df-1 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;}
	.style14
    {
        top: 95px;
        left: 464px;
        width: 133px;
        height: 15px;
        position: absolute;
        z-index: 25;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style6">
    <tr>
        <td class="style3" style="text-align: center">
            Admin List&nbsp; Report</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="1115px" ReportSourceID="CrystalReportSource2" 
                Width="886px" />
            <CR:CrystalReportSource ID="CrystalReportSource2" runat="server">
                <report filename="admin.rpt">
                </report>
            </CR:CrystalReportSource>
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="feedbackreport.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
    </tr>
</table>
</asp:Content>

