<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="site.ldfld" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/stylelogin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    .modalBackground

    {

        background-color: Black;

        filter: alpha(opacity=90);

        opacity: 0.8;

    }

    .modalPopup

    {

        background-color: #FFFFFF;

        border-width: 3px;

        border-style: solid;

        border-color: black;

        padding-top: 10px;

        padding-left: 10px;

        width: 300px;

        height: 300px;

    }

</style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="topbar"><asp:LinkButton ID="back1" runat="server" Text="Back to Homepage" 
             onclick="back1_Click"></asp:LinkButton>
     </div>
  <div id="w">
    <div id="content">
      <h1><asp:Label runat="server"  Text="Welcome to the Hosting.com!"></asp:Label></h1>
     
      
     <p> <asp:Label runat="server" Text="Email Address" ID="lblemail"></asp:Label></p>
     <asp:TextBox runat="server" ID="txtemail"  class="txtfield" Width="344px" 
            AutoCompleteType="Disabled" ValidationGroup="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Email Address Required" ForeColor="#FF3300" 
            ControlToValidate="txtemail" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Email not valid" ForeColor="#FF3300" 
            ControlToValidate="txtemail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
      <p> <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label></p>
      <asp:TextBox ID="passcode" runat="server" class="txtfield" TextMode="Password" 
            Width="344px" AutoCompleteType="Disabled" ValidationGroup="1" MaxLength="20"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Password Required" ForeColor="#FF3300" 
            ControlToValidate="passcode" ValidationGroup="1"></asp:RequiredFieldValidator><br />
      <asp:Button ID="loginclick" runat="server" Text="Login" CssClass="flatbtn-blu" 
            onclick="loginclick_Click" ValidationGroup="1" Height="46px"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label
            ID="or" runat="server" Text="OR" Font-Bold="True" Font-Size="25px" 
            ForeColor="#CC3300"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="create" runat="server" CssClass="flatbtn" 
             Text="Create A Free Account!!" ValidationGroup="2" Height="46px" 
            Width="268px" onclick="create_Click" />
        <br />
         <p><asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label></p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"

    CancelControlID="btnClose" BackgroundCssClass="modalBackground">

</cc1:ModalPopupExtender>
        
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none">
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate >
        
               <asp:Label ID="Label1" runat="server" Text="Please enter your emailid and verification code  sent to you in mailbox"></asp:Label><br /><br />
                 <p> <asp:Label ID="codeeml" runat="server" Text="Email Address"></asp:Label><br /> <asp:TextBox runat="server" ID="veriemaill"  class="txtfield" ValidationGroup="ch" Height="31px"></asp:TextBox></p><br />
                     <p> <asp:Label ID="codeverl" runat="server" Text="Verification code"></asp:Label><br /> <asp:TextBox runat="server" ID="codecv" ValidationGroup="ch"  class="txtfield" Height="31px"></asp:TextBox></p><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldcodel" runat="server" ErrorMessage="*Code Required" ValidationGroup="code" ControlToValidate="codecv" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="Required1" runat="server" ErrorMessage="Email Required" ValidationGroup="code" ControlToValidate="veriemaill"></asp:RequiredFieldValidator>
                
  <asp:Button runat="server" text="Submit" ID="summit" CssClass="flatbtn" OnClick="cvsubmit_Click" /><br />
             <asp:label ID="test"   runat="server" ForeColor="#FF66FF"></asp:label>
   
       
  </ContentTemplate></asp:UpdatePanel>
  <asp:Button ID="btnClose" runat="server" Text="Cancel" ValidationGroup="ch"  />  
</asp:Panel>
      
        <p> <asp:LinkButton ID="btnShow" runat="server" Text="Already have a Verification Code?"></asp:LinkButton><br /></p>
         
         <p>
             <asp:LinkButton ID="forgot" runat="server" Text="Forgot Password ?"  PostBackUrl="~/forgot.aspx"></asp:LinkButton></p>
    </div>
  </div>
 
    </form>
</body>
</html>
