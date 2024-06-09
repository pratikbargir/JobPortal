<%@ Page Language="C#" MasterPageFile="~/candidatelogin/candidatemaster.master" AutoEventWireup="true" CodeFile="Jobapplied.aspx.cs" Inherits="candidatelogin_Jobapplied" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style14
    {
        width: 100%;
        height: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style14">
    <tr>
        <td style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif">
            List Of Job Applied</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="2px" 
                CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="jtitle" HeaderText="jtitle" 
                        SortExpression="jtitle" />
                    <asp:BoundField DataField="compname" HeaderText="compname" 
                        SortExpression="compname" />
                    <asp:BoundField DataField="jcity" HeaderText="jcity" SortExpression="jcity" />
                    <asp:BoundField DataField="jdesignation" HeaderText="jdesignation" 
                        SortExpression="jdesignation" />
                    <asp:BoundField DataField="jminsal" HeaderText="jminsal" 
                        SortExpression="jminsal" />
                    <asp:BoundField DataField="jmaxsal" HeaderText="jmaxsal" 
                        SortExpression="jmaxsal" />
                    <asp:BoundField DataField="applied_date" HeaderText="applied_date" 
                        SortExpression="applied_date" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [jtitle], [compname], [jcity], [jdesignation], [jminsal], [jmaxsal], [applied_date] FROM [jobview] WHERE ([candidate_id] = @candidate_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="candidate_id" SessionField="cid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

