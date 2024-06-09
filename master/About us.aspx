<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="About us.aspx.cs" Inherits="master_About_us" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style15
        {
            width: 100%;
            height: 100%;
            background-image: url('../../images/aboutbg.jpg');
        }
        .style16
        {
            font-size: x-large;
            color: #660033;
        text-align: center;
        font-family: "Berlin Sans FB Demi";
    }
        .style17
        {
            text-align: justify;
        }
    .style18
    {
        font-family: Arial;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" cellpadding="7" cellspacing="7" class="style15" 
        style="background-image: url('../../images/aboutbg.jpg')">
        <tr bgcolor="#C6C6FF">
            <td style="background-image: url('../../images/aboutbg.jpg'); text-align: left;" 
                valign="top">
                <asp:Image ID="Image11" runat="server" Height="200px" 
                    ImageUrl="~/images/about_us_1.jpg" Width="100%" />
            </td>
        </tr>
        <tr bgcolor="#C6C6FF">
            <td style="background-image: url('../../images/aboutbg.jpg'); text-align: left;" 
                valign="top">
                <table align="center" cellpadding="7" cellspacing="7" class="style15" 
                    style="background-image: url('../../images/aboutbg.jpg')">
                    <tr>
                        <td style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                            <div class="style16">
                                DRIVEN BY PASSION, INNOVATION &amp; YOU<br />
                            </div>
                                                <div class="style17">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <span class="style18">we all come to work everyday with a singular thought in our mind- How to make things simpler yet advanced, business focussed 
                                                    yet User-Friendly &amp; strive to be Agile yet reach the masses.
                                                    Welcome to our online job portal. This is where you as a qualified engineer, 
                                                    scientist, or a technical specialist changing careers can find a number of 
                                                    attractive positions&nbsp; You have also come to the right place if you are 
                                                    still studying and are interested in a work placement. We will also welcome a 
                                                    speculative application from you. We look for good, motivated employees on a 
                                                    regular basis and also frequently create positions for candidates who are 
                                                    particularly suited
                                                    &nbsp;We offer Fresher Recruitment Solutions for 60K+ recruiters and we have a presence in colleges in 100+ cities across India. Our 
                                                    client list includes Facebook, EMC, Toshiba, Huawei, Sonus Networks, 
                                                    Motorola,Alcatel Lucent, NetApp, Goodrich, Siemens, Amazon, Symphony Services, 
                                                    ABB, MuSigma, Akamai, Flipkart, Oracle, Practo,Berger Paints, HDFC Life and many 
                                                    more. Have a hiring requirement</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

