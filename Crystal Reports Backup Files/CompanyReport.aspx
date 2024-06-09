<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="CompanyReport.aspx.cs" Inherits="Report_CompanyReport" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large">
    All Company List</p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="True" EnableDatabaseLogonPrompt="False" 
        EnableParameterPrompt="False" Height="50px" 
        ReportSourceID="CrystalReportSource1" Width="350px" BorderStyle="Solid" 
        />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="CompanyReport.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>

