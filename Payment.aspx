<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="site.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirmation and Payment</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "css/images/minus.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "css/images/plus.png");
        $(this).closest("tr").next().remove();
    });
</script>
</head>
<body>
    <form id="form1"  runat="server">

    <div style="margin-top:20px;margin-right:40px; padding:30px;">
    <asp:Image runat="server" id="logop" ImageUrl="~/css/images/logo.png" />
        <br />
        <hr />&nbsp;<asp:Label ID="Labelid" runat="server" Text="Order Id :"></asp:Label>
        &nbsp;<asp:Label ID="Labelidname" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridViewcon" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateRows="True" CellPadding="4" CssClass="gridcartitem" Font-Bold="False" Font-Names="Calibri" Font-Size="Medium" ForeColor="#333333" GridLines="None" DataKeyNames="planname" OnRowDataBound="OnRowDataBound" >
            <AlternatingRowStyle BackColor="White"  />
            <Columns>
                 <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="css/images/plus.png" />
                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="webspace" HeaderText="Webspace" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="bandwidth" HeaderText="Bandwidth" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="emails" HeaderText="Emails" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="accountlimit" HeaderText="Accounts" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="datalimit" HeaderText="DataLimit" />

                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField> 
                <asp:BoundField DataField="product" ItemStyle-Width="150px" HeaderText="Product" SortExpression="product" />
                <asp:BoundField DataField="planname" ItemStyle-Width="150px" HeaderText="Plan name" SortExpression="planname" />
                 
                <asp:BoundField DataField="dname" ItemStyle-Width="150px" HeaderText="Domain Name" SortExpression="dname" />
                <asp:BoundField DataField="terms" ItemStyle-Width="150px" HeaderText="Terms(in months)" SortExpression="terms" />
                <asp:BoundField DataField="payvalue" ItemStyle-Width="150px" DataFormatString="$ {0:d}" HeaderText="Subtotal" SortExpression="payvalue" />

            </Columns>
            <EditRowStyle BackColor="Silver" />
            <EmptyDataRowStyle Font-Bold="True" Font-Size="Medium" />
            <EmptyDataTemplate>
                <h1>
                    <asp:Label ID="Label4682" runat="server" Text="Your cart is empty."></asp:Label>
                </h1>
                <asp:LinkButton ID="LinkButton5651" runat="server" PostBackUrl="~/Default.aspx" Text="Go back to Shop now"></asp:LinkButton>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />

       
            <asp:Label id="t1p" runat="server" Text="Total Amount To be Paid : $" Font-Size="Medium" ForeColor="Black"></asp:Label>
            &nbsp;<asp:Label ID="t2p" runat="server" Font-Size="Medium" ForeColor="Black" ></asp:Label>
        
        
        <hr />
        <br />
        <asp:ScriptManager ID="Scriptnbvv" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="Updatepay" runat="server">
            <ContentTemplate>

           
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree and read the " AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <asp:LinkButton ID="Policy" runat="server" OnClick="Policy_Click">Terms and Conditons and Refund Policy.</asp:LinkButton>
        <br />
        <asp:Label ID="I_agree" runat="server" Font-Size="Small" ForeColor="#FF3300" Text="Please Agree the Terms and Condtions"></asp:Label>
        <br />
        <br />
        <asp:Button ID="button" runat="server" Font-Size="Medium" Text="Confirm and Make Payment" OnClick="button_Click" BackColor="#33CC33" Font-Names="Ebrima" ForeColor="White" Height="55px" Width="220px" />
        <br />
        <br />
        <asp:Label ID="placed" runat="server" Text="Order Status: Order has been Successfully Placed" Font-Bold="True" ForeColor="#33CC33"></asp:Label>
        
                 </ContentTemplate>
        </asp:UpdatePanel><br />
        <br />
       
        <asp:ImageButton runat="server" ID="paypalcheck" ImageUrl="~/css/images/btn_xpressCheckout.gif" align="left" style="margin-right:7px;" OnClick="Unnamed1_Click" />
    
    </div>
    </form>
</body>
</html>
