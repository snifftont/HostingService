<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="failed.aspx.cs" Inherits="site.failed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction Failed</title>
    <script type="text/javascript">
        function loader() {
            document.getElementById("redirectfail").innerText = "This page will be automatically redirected to HomePage after 20 seconds.If not";
        }


        var i = 19;
        setInterval(foo, 1000);


        function foo() {
            if (i > 1) {
                document.getElementById("redirectfail").innerText = "This page will be  automatically redirected to HomePage after " + i + " seconds.If not";
            }
            else if (i == 1) {
                document.getElementById("redirectfail").innerText = "This page will be  automatically redirected to HomePage after 1 second.If not";
            }
            else if (i == 0) {
               

                location.href = "Default.aspx";
            }
            i--;
        }
    </script>
</head>
<body onload="loader()">
    <form id="form1" runat="server">
    <div style=" margin-right:400px;margin-top:200px;margin-left:259px; width:544px">
        <asp:Label id="fail" Font-Bold="True" runat="server" Text="Your Payment has been cancelled due to page refresh or Cancelled!!" Font-Names="Ebrima"></asp:Label>
        
        <br />
        <br />
        <asp:Label ID="redirectfail" runat="server"></asp:Label>
        <asp:LinkButton ID="redirectclick" runat="server" OnClick="redirectclick_Click">Click Here.</asp:LinkButton>
    </div>
    </form>
</body>
</html>
