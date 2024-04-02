<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="salesadmin.aspx.cs" Inherits="site.salesadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color:black;margin:20px;">
  <%--      <h3><asp:Label ID="Planad" runat="server" Text="Hosting Plans"></asp:Label></h3>
        <asp:GridView ID="GridViewhostp" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="productid" DataSourceID="SqlDataSourceplan" ForeColor="#333333" GridLines="None" Width="902px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productid" HeaderText="Product ID" ReadOnly="True" SortExpression="productid" />
                <asp:BoundField DataField="product" HeaderText="Product" SortExpression="product" />
                <asp:BoundField DataField="planid" HeaderText="Plan ID" SortExpression="planid" />
                <asp:BoundField DataField="planname" HeaderText="Plan Name" SortExpression="planname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                <asp:BoundField DataField="webspace" HeaderText="Webspace" SortExpression="webspace" />
                <asp:BoundField DataField="bandwidth" HeaderText="Bandwidth" SortExpression="bandwidth" />
                <asp:BoundField DataField="emails" HeaderText="Emails" SortExpression="emails" />
                <asp:BoundField DataField="accountlimit" HeaderText="Account Limit" SortExpression="accountlimit" />
                <asp:BoundField DataField="datalimit" HeaderText="Data Limit" SortExpression="datalimit" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="dele" runat="server" CommandArgument='<%# Eval("productid")%>'  OnClientClick = "return confirm('Do you want to delete?')"  Height="17px" ImageUrl="~/css/images/Actions-edit-delete-icon.png" Width="16px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceplan" runat="server" ConnectionString="Data Source=PIUSH-PC;Initial Catalog=webhosting;Persist Security Info=True;User ID=sa;Password=nucleon@123" ProviderName="System.Data.SqlClient" SelectCommand="select * from product where product='Hosting'"></asp:SqlDataSource>
      <br/>
      <br/>
      --%>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataconfirmordr" ForeColor="#333333" GridLines="None" Width="844px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="Orderid" SortExpression="orderid" />
                <asp:BoundField DataField="txid" HeaderText="Transaction No" SortExpression="txid" />
                <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="amount" HeaderText="Paid Amount" SortExpression="amount" />
                <asp:BoundField DataField="payername" HeaderText="Payer Name" SortExpression="payername" />
                <asp:BoundField DataField="payeremail" HeaderText="Payer Email" SortExpression="payeremail" />
                <asp:BoundField DataField="productbought" HeaderText="Product Bought" SortExpression="productbought" />
                <asp:BoundField DataField="buyeremail" HeaderText="Buyer Email" SortExpression="buyeremail" />
                <asp:BoundField DataField="buyername" HeaderText="Buyer Name" SortExpression="buyername" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <%--<asp:SqlDataSource ID="SqlDataconfirmordr" runat="server" ConnectionString="Data Source=PIUSH-PC;Initial Catalog=webhosting;Persist Security Info=True;User ID=sa;Password=nucleon@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [paypal_payment]"></asp:SqlDataSource>--%>
        <asp:SqlDataSource ID="SqlDataconfirmordr" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog= hostingdb;Integrated Security=False;User ID= hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [paypal_payment]"></asp:SqlDataSource>
        
    </div>
</asp:Content>
