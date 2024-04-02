<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="site.create" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Create User</title>
    <link href="css/stylelogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <div id="topbar1">
    
        <a href="Default.aspx">Back To HomePage</a>
     </div>
  <div id="w">
    <div id="content">
      <h1><asp:Label ID="forgotwelcome" runat="server"  Text="Welcome to the Hosting.com!"></asp:Label></h1>
     
      <p><asp:Label ID="details" runat="server"  
              Text="Create your Accounts in just 45 seconds."></asp:Label></p>
        <br />
    <p><asp:Label runat="server" Text="Name" ID="lblnm" Font-Bold="True"></asp:Label></p>
        <asp:TextBox ID="txtname" runat="server" Width="344px" class="txtfield"  
            AutoCompleteType="Disabled" placeholder="Enter your Name" ValidationGroup="1" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtname" ErrorMessage="Name Required" 
            ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
     <p> <asp:Label runat="server" Text="Email Address" ID="lblemailf" Font-Bold="True"></asp:Label></p>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> <asp:TextBox runat="server" ID="txtemailf"  class="txtfield" Width="344px" 
            AutoCompleteType="Disabled" placeholder="Enter Email Address" 
            ValidationGroup="1" OnTextChanged="txtemailf_TextChanged" AutoPostBack="True"></asp:TextBox><div id="checkusername" runat="server"  Visible="false">
<asp:Image ID="imgstatus" runat="server" Width="17px" Height="17px"/>
<asp:Label ID="lblStatus" runat="server"></asp:Label>
</div></ContentTemplate></asp:UpdatePanel>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Email Address Required" ForeColor="#FF3300" 
            ControlToValidate="txtemailf" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ErrorMessage="Email not valid" ForeColor="#FF3300" 
            ControlToValidate="txtemailf" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
            <br />
       <p> <asp:Label runat="server" Text="Password" ID="passcodee" Font-Bold="True"></asp:Label></p>
        <asp:TextBox ID="passcode1" runat="server" Width="344px" class="txtfield"  placeholder="Enter Password"
            AutoCompleteType="Disabled" TextMode="Password" ValidationGroup="1" MaxLength="20"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
               ErrorMessage="Password Required" ForeColor="#FF3300" 
            ValidationGroup="1" ControlToValidate="passcode1"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
               ControlToValidate="passcode1" ErrorMessage="Password requires 6 to 20 characters  with at least 1 digit,1 upper case letter,1 lower case letter and 1 special symbol (“@#$_”)" 
               ForeColor="#FF3300" 
               
            ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$_]).{6,20})" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
        
        <p> <asp:Label runat="server" Text="Confirm Password" ID="passcodee0" 
                Font-Bold="True"></asp:Label> </p>
            <asp:TextBox ID="passcode2" runat="server" Width="344px" class="txtfield" placeholder="Please Confirm Password" 
            AutoCompleteType="Disabled" TextMode="Password" ValidationGroup="1" MaxLength="20"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="passcode1" ControlToValidate="passcode2" 
            ErrorMessage="Password Mismatch" ForeColor="#FF3300"></asp:CompareValidator>
        <p><asp:Label runat="server" Text="Address Line1" ID="lblad1" Font-Bold="True"></asp:Label></p>
        <asp:TextBox ID="txtad1" runat="server" Width="344px" class="txtfield" placeholder="Address"  
            AutoCompleteType="Disabled" Height="60px" MaxLength="50" 
            TextMode="MultiLine" ValidationGroup="1" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" ErrorMessage="Address Required" 
            ControlToValidate="txtad1" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
       <p> <asp:Label runat="server" Text="Address Line2" ID="lblad2" Font-Bold="True"></asp:Label></p>
        <asp:TextBox ID="txtadd2" runat="server" Width="344px" class="txtfield"  
            AutoCompleteType="Disabled" Height="60px" TextMode="MultiLine" ></asp:TextBox>
       <p> <asp:Label runat="server" Text="City" ID="lblem3" Font-Bold="True"></asp:Label></p>
       <asp:TextBox ID="txtcity" runat="server" Width="344px" class="txtfield" placeholder="Enter City Name" 
            AutoCompleteType="Disabled" ValidationGroup="1" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="City Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
       <p> <asp:Label runat="server" Text="Country" ID="lblem4" Font-Bold="True"></asp:Label></p>
        <asp:DropDownList ID="countrylist" runat="server" Width="250px" 
            DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="Country" 
            Height="25px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Country] FROM [Currencies]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="countrylist" ErrorMessage="Country Required" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
            <br />
            <asp:Button ID="usercreate" runat="server" Text="Submit" 
            CssClass="flatbtn" ValidationGroup="1" onclick="usercreate_Click" />
            <br />
        <br />
        <asp:Image ID="createstatus" runat="server" />
        <asp:label ID="msgcreate" runat="server" Font-Size="Medium"></asp:label>
            </div>
            <br />
            </div>
    </div>
    </form>
</body>
</html>
