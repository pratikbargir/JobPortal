<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_List.aspx.cs" Inherits="Report_admin_List" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        font-size: large;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<table align="center" class="style6">
    <tr>
    <td style="text-align: center">
        <b>Admin List</b></td>
    </tr>
    
    <tr>
    <td>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="True" Height="50px" ReportSourceID="CrystalReportSource1" 
    Width="350px" BorderStyle="Solid" ></CR:CrystalReportViewer>
<CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
    <Report FileName="admin.rpt">
    </Report>
</CR:CrystalReportSource>
</td>
</tr>
</table>

</asp:Content>

