<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="DatewiseReport.aspx.cs" Inherits="Report_DatewiseReport" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 100%;
        height: 100%;
    }
    .style7
    {
        width: 102px;
            font-weight: 700;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            text-align: right;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
            text-align: right;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="10" cellspacing="10" class="style6">
    <tr>
        <td colspan="2" class="style9">
            DateWise Report of Job Applied:</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            From:</td>
        <td style="text-align: left">
&nbsp;<br />
            <asp:TextBox ID="TextFrom" runat="server" Height="30px" ></asp:TextBox>
            <cc1:DropShadowExtender ID="TextFrom_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="TextFrom">
            </cc1:DropShadowExtender>
            <cc1:CalendarExtender ID="TextFrom_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextFrom">
            </cc1:CalendarExtender>
            <br />
        </td>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td class="style8">
            To:</td>
        <td width="150">
            <br />
            <asp:TextBox ID="TextTo" runat="server" Width="150px" Height="30px" 
            ></asp:TextBox>
            <cc1:DropShadowExtender ID="TextTo_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="TextTo">
            </cc1:DropShadowExtender>
            <cc1:CalendarExtender ID="TextTo_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextTo">
            </cc1:CalendarExtender>
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" onclick="BtnSubmit_Click" 
                Text="Submit" BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                Width="100px" />
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="50px" ReportSourceID="CrystalReportSource1" 
                Width="350px"></CR:CrystalReportViewer>
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="dateWiseReport.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

