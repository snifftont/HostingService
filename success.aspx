<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="site.success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction</title>
    <link href="css/success.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         function load() {
             document.getElementById("Redirectmessage").innerText = "This page will be automatically redirected to HomePage after 1 minute.If not";
         }


         var i = 59;
         setInterval(foo, 1000);


         function foo() {
             if (i > 1) {
                 document.getElementById("Redirectmessage").innerText = "This page will be  automatically redirected to HomePage after " + i + " seconds.If not";
             }
             else if (i == 1) {
                 document.getElementById("Redirectmessage").innerText = "This page will be  automatically redirected to HomePage after 1 second.If not";
             }
             else if (i == 0) {
                 //$.post("success.aspx?action=load", {}, function (data) {
                 //    location.href = "Default.aspx";
                 //});

                 location.href = "Default.aspx";
             }
             i--;
         }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 215px;
        }
    </style>
</head>
<body onload="load();">
    <form id="form1" runat="server">
    <div>
          <div id="success">
              <table class="tblsuccess">
                  <caption id="capsuccess" class="capsuccess" title="Success" >
                      <asp:Label ID="lbltrans" runat="server" Text="Transaction Successfull!!" Font-Names="Ebrima" Font-Bold="False"></asp:Label></caption>
                  <tr>
                      <td  colspan="2">
                          <asp:Label ID="lblsucp1" CssClass="tblrow1" runat="server" Text="Thanks!! Your Payment has been successfully confirmed" Font-Names="Ebrima"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="lblordersuccessid" runat="server" Text="Order ID :" Font-Bold="False"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="odridvalue" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="LblTransid" runat="server" Text="Transaction ID :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="transidvalue" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="LBLPayerName" runat="server" Text="Payer's Name :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="lblpayernme" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="Lblamountsuc" runat="server" Text="Amount :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="amountvalue" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="PayerEmail" runat="server" Text="Payer's Email Address :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="lblpayerremail" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="lblpaidfor" runat="server" Text="Paid For Product :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="lblsprodnme" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Label ID="lblbuyer" runat="server" Text="Buyer's email address :"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="lblbuyerem" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1" colspan="2">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1" colspan="2">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1" colspan="2">
                          <asp:Label ID="Redirectmessage" runat="server" Font-Names="Ebrima"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1" colspan="2">
                          
              <asp:LinkButton ID="Linkreturn" runat="server" OnClick="Linkreturn_Click" PostBackUrl="~/Default.aspx">Click Here</asp:LinkButton>
                          
                      </td>
                  </tr>
              </table>
              <br />
          </div>
        
        <br /><br />
        
        <br />
    </div>
    </form>
</body>
</html>
