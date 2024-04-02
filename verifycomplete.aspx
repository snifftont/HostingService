<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verifycomplete.aspx.cs" Inherits="site.verifycomplete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Verification</title>
         <script type="text/javascript">
             function load() {
                 document.getElementById("veriredirect").innerText = "This page will be automatically redirected to HomePage after 1 minute.If not";
             }


             var i = 9;
             setInterval(foo, 1000);


             function foo() {
                 if (i > 1) {
                     document.getElementById("veriredirect").innerText = "This page will be  automatically redirected to Login/Signup  after " + i + " seconds.If not";
                 }
                 else if (i == 1) {
                     document.getElementById("veriredirect").innerText = "This page will be  automatically redirected to Login/Signup after 1 second.If not";
                 }
                 else if (i == 0) {
                     //$.post("success.aspx?action=load", {}, function (data) {
                     //    location.href = "Default.aspx";
                     //});

                     location.href = "login.aspx";
                 }
                 i--;
             }
    </script>
</head>
<body onload="load();">
    <form id="form1" runat="server">
    <div>
   <h3> 
       <asp:Label ID="verifyth" runat="server"></asp:Label>
        </h3>


        <asp:Label ID="veriredirect" runat="server" ></asp:Label>
        <asp:LinkButton ID="back2" runat="server" onclick="back2_Click" Text="Click here."></asp:LinkButton>
    </div>
    </form>
</body>
</html>
