<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="site._404error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error Page</title>
    <script type="text/javascript">
        function mouseOverImage() {
            document.getElementById('<%= homeerror.ClientID %>').src = "css/images/hover404.png";
            document.getElementById('<%= Contacto.ClientID %>').src = "css/images/contacto2.png";
}

function mouseOutImage() {
    document.getElementById('<%= homeerror.ClientID %>').src = "css/images/home.png";
     document.getElementById('<%= Contacto.ClientID %>').src = "css/images/contacto1.png";
        }
    </script>
    <link href="css/error.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .contact {
            margin-left: 83px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="errorback" class="errorback">
    <asp:ImageButton runat="server" CssClass="homeerror" ImageUrl="~/css/images/home.png" onmouseover="this.src='css/images/hover404.png';" onmouseout="this.src='css/images/home.png';"  AlternateText="Home" ID="homeerror" OnClick="homeerror_Click" />
      <asp:ImageButton runat="server" CssClass="contact"  ImageUrl="~/css/images/contacto1.png" onmouseover="this.src='css/images/Contacto2.png';" onmouseout="this.src='css/images/contacto1.png';"  AlternateText="Home" ID="Contacto" OnClick="Contacto_Click"  />  
    
    </div>
    </form>
</body>
</html>
