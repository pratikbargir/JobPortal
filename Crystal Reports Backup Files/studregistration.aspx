<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="studregistration.aspx.cs" Inherits="master_studregistration" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
            color: #800000;
        }
        .style17
        {
            width: 80%;
            height: 80%;
        }
        .style19
        {
            font-weight: bold;
            text-align: center;
        }
        .style20
        {
            width: 72px;
        }
        .style21
        {
            text-align: center;
        }
        .style22
        {
            width: 72px;
            height: 29px;
        }
        .style23
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset width="1000">
   <legend class="style15">Login Details</legend>
        <table align="center" class="style17">
           <tr>
               <td>
                   User Name</td>
               <td>
                   <asp:TextBox ID="txtusername" runat="server" Height="25" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   Password</td>
               <td>
                   <asp:TextBox ID="txtpassword" runat="server" Height="25" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   Confirm Password</td>
               <td>
                   <asp:TextBox ID="txtconfirmpasswd" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                       ControlToCompare="txtpassword" ControlToValidate="txtconfirmpasswd" 
                       ErrorMessage="password and confirm password must match"></asp:CompareValidator>
               </td>
           </tr>
       </table>
   </fieldset> 
   <fieldset width="1000">
   <legend class="style15">Candidate Personal Details</legend>
   
       <table align="center" class="style17">
           <tr>
               <td class="style20">
                   Name</td>
               <td style="margin-left: 120px">
           
                   <asp:TextBox ID="txtlname" runat="server" Height="25" Width="200" 
                      ></asp:TextBox>
                   <cc1:TextBoxWatermarkExtender ID="txtlname1" runat="server" Enabled="True" 
                       TargetControlID="txtlname" WatermarkText="Enter Surname">
                   </cc1:TextBoxWatermarkExtender>
                   <asp:TextBox ID="txtfname" runat="server" Height="25" Width="200" 
                       placeholder="FirstName"></asp:TextBox>
                   <cc1:TextBoxWatermarkExtender ID="txtfname_TextBoxWatermarkExtender" 
                       runat="server" Enabled="True" TargetControlID="txtfname" WatermarkText="Enter First Name">
                   </cc1:TextBoxWatermarkExtender>
                   <asp:TextBox ID="txtmidname" runat="server" Height="25" Width="200" 
                       placeholder="MiddleName"></asp:TextBox>
                   <cc1:TextBoxWatermarkExtender ID="txtmidname_TextBoxWatermarkExtender" 
                       runat="server" Enabled="True" TargetControlID="txtmidname" WatermarkText="Enter Middle Name">
                   </cc1:TextBoxWatermarkExtender>
               </td>
               <td rowspan="9">
                   <asp:Image ID="Image11" runat="server" Height="100" Width="100" 
                       ImageAlign="AbsMiddle"/>
                   <br />
                   <br />
                   <asp:FileUpload ID="FileUpload1" runat="server" Height="25" Width="200"/>
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnuploadimg" runat="server" style="text-align: left" 
                       Text="Upload" Height="25" Width="200" onclick="btnuploadimg_Click"/>
                                    </td>
           </tr>
           <tr>
               <td class="style20">
                   &nbsp;</td>
               <td style="margin-left: 120px">
           
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                       ControlToValidate="txtlname" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   +&nbsp;&nbsp;
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                       runat="server" ControlToValidate="txtfname" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                       runat="server" ControlToValidate="txtmidname" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style22">
                   Address</td>
               <td class="style23">
                   <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" Height="25" 
                       Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   City</td>
               <td>
                   <asp:TextBox ID="txtcity" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                       ControlToValidate="txtcity" ErrorMessage="Character only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   State</td>
               <td>
                   <asp:TextBox ID="txtstate" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                       ControlToValidate="txtstate" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   Gender</td>
               <td>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:RadioButton ID="rdmale" runat="server" GroupName="rd" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <asp:RadioButton ID="rdfemale" runat="server" GroupName="rd" Text="Female"/>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                   </cc1:ToolkitScriptManager>
                   DOB</td>
               <td>
                   <asp:TextBox ID="txtdob" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <cc1:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                       Enabled="True" TargetControlID="txtdob">
                   </cc1:CalendarExtender>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   Contact No.</td>
               <td>
                   <asp:TextBox ID="txtcontact" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                       ControlToValidate="txtcontact" ErrorMessage="Number must be of 10 digit" 
                       ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style20">
                   Email</td>
               <td>
                   <asp:TextBox ID="txtemail" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                       ControlToValidate="txtemail" ErrorMessage="Email must in correct format" 
                       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               </td>
           </tr>
           </table>
    </fieldset>
   <fieldset width="1000">
   <legend class="style15">Candidate Education Details</legend>
                            <table align="center" class="style17">
                                <tr>
                                    <td class="style19">
                                        Course</td>
                                    <td class="style19">
                                        Institute</td>
                                    <td class="style19">
                                        Specialization</td>
                                    <td class="style19">
                                        Percentage/Grade</td>
                                </tr>
                                <tr>
                                    <td>
                                        SSC
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpsscin" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Kolhapur Divisional Board
                                            </asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtsscperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        HSC<td>
                                        <asp:DropDownList ID="drphscin" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="Kolhapur Divisional Board "></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drphscsp" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Science</asp:ListItem>
                                            <asp:ListItem>Commerce</asp:ListItem>
                                            <asp:ListItem>Arts</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txthscperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Graduation
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpgradin" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Shivaji University Kolhapur</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpgradsp" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>B.Sc Computer Science</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtgradperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Post Graduation
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drppgin" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Shivaji University Kolhapur</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drppgsp" runat="server" Height="25" Width="200">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>M.Sc Computer Science</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtpgperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Phd</td>
               <td>
                   <asp:DropDownList ID="drpphdin" runat="server" Height="25" Width="200">
                       <asp:ListItem></asp:ListItem>
                       <asp:ListItem>Shivaji University Kolhapur</asp:ListItem>
                   </asp:DropDownList>
                                    </td>
               <td>
                   <asp:DropDownList ID="drpphdsp" runat="server" Height="25" Width="200">
                       <asp:ListItem></asp:ListItem>
                       <asp:ListItem>Networking</asp:ListItem>
                   </asp:DropDownList>
                                    </td>
               <td>
                   <asp:TextBox ID="txtphdperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Certification</td>
               <td>
                   <asp:TextBox ID="txtcertificatein" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
               <td>
                   <asp:TextBox ID="txtcertificatesp" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
               <td>
                   <asp:TextBox ID="txtcertificateperc" runat="server" Height="25" Width="200"></asp:TextBox>
                                    </td>
           </tr>
       </table>
   </fieldset>
   <fieldset width="1000">
   <legend class="style15">Candidate Professional Details</legend>
       <table align="center" class="style17">
           <tr>
               <td>
                   Experience</td>
               <td>
                   <asp:DropDownList ID="drpexperience" runat="server" Height="25" Width="200" 
                       onselectedindexchanged="drpexperience_SelectedIndexChanged">
                       <asp:ListItem>0</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                       <asp:ListItem>6</asp:ListItem>
                       <asp:ListItem>7</asp:ListItem>
                       <asp:ListItem>8</asp:ListItem>
                       <asp:ListItem>9</asp:ListItem>
                       <asp:ListItem>10</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td>
                   Company Name</td>
               <td>
                   <asp:TextBox ID="txtcname" runat="server" Height="25" Width="200" 
                       AutoPostBack="True"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                       ControlToValidate="txtcname" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td>
                   Designation</td>
               <td>
                   <asp:TextBox ID="txtdesign" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                       ControlToValidate="txtdesign" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td>
                   Salary</td>
               <td>
                   <asp:TextBox ID="txtsal" runat="server" Height="25" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   Skills</td>
               <td>
                   <asp:TextBox ID="txtskills" runat="server" Height="25" Width="200"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                       ControlToValidate="txtskills" ErrorMessage="Character Only" 
                       ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
       </table>
   </fieldset>
   <fieldset width="1000">
   <legend class="style15">Resume Details</legend>
       <table align="center" class="style17">
           <tr>
               <td>
                   Resume</td>
               <td>
                   <asp:TextBox ID="txtresumepath" runat="server"></asp:TextBox>
&nbsp;<asp:FileUpload ID="FileUpload2" runat="server" Height="25" Width="200"/>
&nbsp;
                   <asp:Button ID="btnuploadresume" runat="server" Text="Upload" Height="25" 
                       Width="200" onclick="btnuploadresume_Click"/>
               </td>
           </tr>
       </table>
   </fieldset>
   <table align="center" class="style17">
        <tr>
            <td class="style21">
            
                <asp:CheckBox ID="chkterms" runat="server" 
                    Text="I accept all the terms and conditions" 
                    oncheckedchanged="chkterms_CheckedChanged" />
            
            </td>
        </tr>
        <tr>
            <td class="style21">
            
                <asp:Button ID="btnlogin" runat="server" Text="Submit" Height="25" Width="200" onclick="btnlogin_Click" 
                 />
            
            </td>
        </tr>
   </table>
 </asp:Content>

