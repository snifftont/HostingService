<%@ Page Title="Accounts" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="useraccount.aspx.cs" Inherits="site.useraccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" bgbody">
    <div class="cloudpageleft" style="padding:30px;">
        <div class="content">
            <div class="content1">
                 <h2 class="h1">Change your Password</h2>
    <div id="divchange">
        <asp:Panel ID="Panel1" runat="server" CssClass="create">
           

            <table style="font: Ebrima, Medium; align-content:center; font-family: Ebrima; color:#0c2635; font-size: medium;" align="center">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblold" runat="server" Text="Old Password :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtold0" runat="server"  CssClass="text" Height="21px" MaxLength="20" TextMode="Password" Width="250px" ValidationGroup="changeP"  ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="text-align:left;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold0" ErrorMessage="*Old Password Required" ForeColor="#FF3300" ValidationGroup="pc"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblnew0" runat="server" Text="New Password :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtnew2" runat="server" Height="21px"  CssClass="text" MaxLength="20" TextMode="Password" Width="250px" ValidationGroup="pc"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="text-align:left;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew2" ErrorMessage="*New Password Required" ForeColor="#FF3300" ValidationGroup="pc"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblconfirm0" runat="server" Text="Confirm Password :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfirm2" runat="server" Height="21px"  CssClass="text" MaxLength="20" TextMode="Password" Width="250px" ValidationGroup="pc"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="text-align:left;" >&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirm2" ErrorMessage="*Required" ForeColor="#FF3300" ValidationGroup="pc"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew2" ControlToValidate="txtconfirm2" ErrorMessage="Password Do Not Match" ForeColor="#FF3300" ValidationGroup="pc"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="height:20px;">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnew2" ErrorMessage="Password requires 6 to 20 characters  with at least 1 digit,1 upper case letter,1 lower case letter and 1 special symbol (“@#$_”)" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$_]).{6,20})" ValidationGroup="pc"></asp:RegularExpressionValidator>
                    </td>
                    <td style="">
                        <div style="margin-top:-30px;text-align:left; ">
                        <asp:Button ID="txtSubmit" runat="server" CssClass="grey-btn" Font-Names="Ebrima" Font-Size="Medium" Height="30px" OnClick="txtSubmit_Click" Text="Submit" ValidationGroup="pc" />
                  </div>  </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td valign="middle">
                        <asp:Image ID="checkpass0" runat="server" ImageUrl="~/Icon_Available.gif" />
                        <asp:Label ID="lblcheckoldpass0" runat="server"></asp:Label>

                </td>

                    
                </tr>
            </table>
           
            
        </asp:Panel>
    </div>
                </div></div></div></div>
</asp:Content>
