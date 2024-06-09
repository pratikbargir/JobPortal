<%@ Page Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="ManageCandidate.aspx.cs" Inherits="admin_Manage_Candidate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 100%;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="5" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700">
        <tr>
            <td style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: x-large">
                Registered&nbsp; Candidates</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="candidate_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                        <asp:BoundField DataField="first_name" HeaderText="first_name" 
                            SortExpression="first_name" />
                        <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                            SortExpression="middle_name" />
                        <asp:BoundField DataField="last_name" HeaderText="last_name" 
                            SortExpression="last_name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                            SortExpression="contact_no" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" 
                            SortExpression="email_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [candidate]" DeleteCommand="delete from [candidate] where candidate_id=[candidate_id] "></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

