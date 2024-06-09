<%@ Page Language="C#" EnableEventValidation ="true" MasterPageFile="~/candidatelogin/candidatemaster.master" AutoEventWireup="true" CodeFile="ManageProfile.aspx.cs" Inherits="candidatelogin_ManageProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            text-align: center;
        }
        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: large;
            color: #990000;
        }
        .style18
    {
        width: 80%;
        height: 100%;
    }
    .style19
    {
        height: 222px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style16">
        <span class="style17">Manage profile&nbsp;&nbsp;&nbsp;</span></p>
                        <table align="center" cellpadding="9" class="style18">
                            <tr>
                                <td style="color: #003399; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large">
                                    Personal Information</td>
                                <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #003399">
                                    Educatoional Information</td>
                            </tr>
                            <tr>
                                <td class="style19" valign="top">
                                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" 
                                        AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                                        DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" Height="29px" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                        Width="384px">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <Fields>
                                            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                                            <asp:BoundField DataField="first_name" HeaderText="first_name" 
                                                SortExpression="first_name" />
                                            <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                                                SortExpression="middle_name" />
                                            <asp:BoundField DataField="last_name" HeaderText="last_name" 
                                                SortExpression="last_name" />
                                            <asp:BoundField DataField="address" HeaderText="address" 
                                                SortExpression="address" />
                                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                            <asp:BoundField DataField="gender" HeaderText="gender" 
                                                SortExpression="gender" />
                                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                                                SortExpression="contact_no" />
                                            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                                                SortExpression="email_id" />
                                            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                        </Fields>
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [candidate] WHERE ([candidate_id] = @candidate_id)"
                                         UpdateCommand ="update[candidate] set [first_name]=@first_name,[last_name]=@last_name,[middle_name]=@middle_name,[email_id]=@email_id,[contact_no]=@contact_no,[gender]=@gender,[state]=@state,[address]=@address WHERE ([candidate_id] = @candidate_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="candidate_id" SessionField="cid" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td rowspan="3" valign="top">
                                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateEditButton="True" 
                                        AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                                        DataSourceID="SqlDataSource2" Height="108px" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                        Width="384px">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <Fields>
                                            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                                                SortExpression="candidate_id" />
                                            <asp:BoundField DataField="ssc_institute" HeaderText="ssc_institute" 
                                                SortExpression="ssc_institute" />
                                            <asp:BoundField DataField="ssc_percent" HeaderText="ssc_percent" 
                                                SortExpression="ssc_percent" />
                                            <asp:BoundField DataField="hsc_institute" HeaderText="hsc_institute" 
                                                SortExpression="hsc_institute" />
                                            <asp:BoundField DataField="hsc_percent" HeaderText="hsc_percent" 
                                                SortExpression="hsc_percent" />
                                            <asp:BoundField DataField="hsc_sp" HeaderText="hsc_sp" 
                                                SortExpression="hsc_sp" />
                                            <asp:BoundField DataField="grad_institute" HeaderText="grad_institute" 
                                                SortExpression="grad_institute" />
                                            <asp:BoundField DataField="grad_percent" HeaderText="grad_percent" 
                                                SortExpression="grad_percent" />
                                            <asp:BoundField DataField="grad_sp" HeaderText="grad_sp" 
                                                SortExpression="grad_sp" />
                                            <asp:BoundField DataField="postgrad_institute" HeaderText="postgrad_institute" 
                                                SortExpression="postgrad_institute" />
                                            <asp:BoundField DataField="postgrad_percent" HeaderText="postgrad_percent" 
                                                SortExpression="postgrad_percent" />
                                            <asp:BoundField DataField="postgrad_sp" HeaderText="postgrad_sp" 
                                                SortExpression="postgrad_sp" />
                                            <asp:BoundField DataField="phd_institute" HeaderText="phd_institute" 
                                                SortExpression="phd_institute" />
                                            <asp:BoundField DataField="phd_percent" HeaderText="phd_percent" 
                                                SortExpression="phd_percent" />
                                            <asp:BoundField DataField="phd_sp" HeaderText="phd_sp" 
                                                SortExpression="phd_sp" />
                                            <asp:BoundField DataField="certification_institute" 
                                                HeaderText="certification_institute" SortExpression="certification_institute" />
                                            <asp:BoundField DataField="certification_percent" 
                                                HeaderText="certification_percent" SortExpression="certification_percent" />
                                            <asp:BoundField DataField="certification_sp" HeaderText="certification_sp" 
                                                SortExpression="certification_sp" />
                                        </Fields>
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [candidate_education] WHERE ([candidate_id] = @candidate_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="candidate_id" SessionField="cid" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; color: #003399; font-family: Arial, Helvetica, sans-serif; font-size: large" 
                                    valign="top">
                                    Login Information</td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateEditButton="True" 
                                        AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                                        DataKeyNames="username" DataSourceID="SqlDataSource3" Height="29px" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                        Width="384px">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <Fields>
                                            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                                                SortExpression="username" />
                                            <asp:BoundField DataField="password" HeaderText="password" 
                                                SortExpression="password" />
                                            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                                                SortExpression="candidate_id" />
                                        </Fields>
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [candidate_login] WHERE ([candidate_id] = @candidate_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="candidate_id" SessionField="cid" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; color: #003399; font-size: large; font-family: Arial, Helvetica, sans-serif">
                                    Professional Information</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateEditButton="True" 
                                        AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                                        DataSourceID="SqlDataSource5" Height="29px" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                        Width="384px">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <Fields>
                                            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                                                SortExpression="candidate_id" />
                                            <asp:BoundField DataField="industry" HeaderText="industry" 
                                                SortExpression="industry" />
                                            <asp:BoundField DataField="designation" HeaderText="designation" 
                                                SortExpression="designation" />
                                            <asp:BoundField DataField="experience" HeaderText="experience" 
                                                SortExpression="experience" />
                                            <asp:BoundField DataField="salary" HeaderText="salary" 
                                                SortExpression="salary" />
                                            <asp:BoundField DataField="skills" HeaderText="skills" 
                                                SortExpression="skills" />
                                        </Fields>
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [candidate_professional] WHERE ([candidate_id] = @candidate_id)"
                                         UpdateCommand ="update [candidate_professional] set [skills]=@skills,[salary]=@salary,[designation]=@designation,[experience]=@experience,[industry]=@industry WHERE ([candidate_id] = @candidate_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="candidate_id" SessionField="cid" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [candidate_professional] WHERE ([candidate_id] = @candidate_id)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="cid" Name="candidate_id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
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
                            </tr>
</table>
</asp:Content>

