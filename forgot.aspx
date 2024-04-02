<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="site.forgot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password?</title>
<link href="css/stylelogin.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
    <div id="topbar">
    
     <asp:LinkButton ID="back3" runat="server" Text="Back to Homepage" PostBackUrl="~/Default.aspx"></asp:LinkButton>
     </div>
  <div id="w">
    <div id="content">
      <h1><asp:Label ID="forgotwelcome" runat="server"  Text="Welcome to the Hosting.com!"></asp:Label></h1>
     
      <p><asp:Label ID="details" runat="server"  
              Text="Change your password in three easy steps. This helps to keep your new password secure."></asp:Label></p>
        <br />
        <p><asp:Image ID="ImageS1" runat="server" ImageUrl="~/css/images/1.PNG" />
            <asp:Label ID="step1" runat="server"  
              Text="Fill in your email address below."></asp:Label>
        </p>
                <p><asp:Image ID="ImageS2" runat="server" ImageUrl="~/css/images/2.PNG" />
                    <asp:Label ID="step2" runat="server"  
              Text="We’ll email you a temporary code."></asp:Label>
        </p>
                
                <p><asp:Image ID="ImageS3" runat="server" ImageUrl="~/css/images/3.PNG" />
                    <asp:Label ID="step3" runat="server"  
              Text="Use the code to change your password on our secure website."></asp:Label>
        </p>
        <br />
     <p> <asp:Label runat="server" Text="Email Address" ID="lblemailf" Font-Bold="True"></asp:Label></p>
     <asp:TextBox runat="server" ID="txtemailf"  class="txtfield" Width="344px" 
            AutoCompleteType="Disabled" placeholder="Enter Email Address" 
            ValidationGroup="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Email Address Required" ForeColor="#FF3300" 
            ControlToValidate="txtemailf" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ErrorMessage="Email not valid" ForeColor="#FF3300" 
            ControlToValidate="txtemailf" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="forgotclick" runat="server" Text="Submit" 
            CssClass="flatbtn" ValidationGroup="1" />
            </div>
            <br />
            <p><asp:label ID="msg" Text="" runat="server"></asp:label></p>
            </div>
    
    </form>
</body>
</html>
