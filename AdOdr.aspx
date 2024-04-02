<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdOdr.aspx.cs" Inherits="site.AdOdr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script type = "text/javascript" src = "js/jquery-1.3.2.min.js"></script>
<script type = "text/javascript" src = "js/jquery.blockUI.js"></script>
<script type = "text/javascript">
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function () {
            $("#" + elementID).block({
                message: '<table align = "center"><tr><td>' +
                 '<img src="css/images/loadingAnim.gif"/></td></tr></table>',
                css: {},
                overlayCSS: {
                    backgroundColor: '#000000', opacity: 0.6, border: '3px solid #63B2EB'
                }
            });
        });
        prm.add_endRequest(function () {
            $("#" + elementID).unblock();
        });
    }
    $(document).ready(function () {

        BlockUI("dvGrid");
        $.blockUI.defaults.css = {};
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="color:black;margin:20px;">
        <h2><asp:Label runat="server" Text="Orders"></asp:Label></h2>
          <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
<div id = "dvGrid" style ="padding:30px">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:GridView ID="GridView1" runat="server"  Width="950"
AutoGenerateColumns = "false" Font-Names = "Arial"
Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
HeaderStyle-BackColor="Violet" AllowPaging ="true" ShowFooter="true"
OnPageIndexChanging = "OnPaging" OnRowEditing="EditOrders" OnRowCancelingEdit="CancelEdit" OnRowUpdating="UpdateOrders" PageSize = "15" PagerSettings-FirstPageText="First" PagerSettings-LastPageText="Last" PagerSettings-NextPageText="Next" PagerSettings-PreviousPageText="Previous" PagerSettings-Mode="NumericFirstLast" SelectedRowStyle-BackColor="#CCFFFF">
<Columns>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "OrderID">
    <ItemTemplate>
        <asp:Label ID="adminordrid" runat="server"
        Text='<%# Eval("orderid")%>'></asp:Label>
    </ItemTemplate>
    
    <ItemStyle Width="30px" />
    <FooterTemplate>
                <asp:TextBox ID="txtadminordrid" Width = "100px"  runat="server"></asp:TextBox>
            </FooterTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Name">
    <ItemTemplate>
        <asp:Label ID="lblContactName" runat="server"
                Text='<%# Eval("name")%>'></asp:Label>
    </ItemTemplate>
    <FooterTemplate>
                <asp:TextBox ID="txtContactName" Width = "100px" runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtContactName" runat="server"
            Text='<%# Eval("name")%>'></asp:TextBox>
    </EditItemTemplate> 
   
    <ItemStyle Width="100px" />
   
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Customer's Email">
    <ItemTemplate>
        <asp:Label ID="lblmail" runat="server"
            Text='<%# Eval("email")%>'></asp:Label>
    </ItemTemplate>
       <FooterTemplate>
                <asp:TextBox ID="txtmail" Width = "140px"  runat="server"></asp:TextBox>
            </FooterTemplate>
    
    <ItemStyle Width="150px" />
   
    
</asp:TemplateField>
    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Dated">
    <ItemTemplate>
        <asp:Label ID="lbDated" runat="server"
            Text='<%# Eval("date","{0:d}")%>'></asp:Label>
    </ItemTemplate>
        
    <EditItemTemplate>
        <asp:TextBox ID="txtDated" runat="server"
            Text='<%# Eval("date","{0:d}") %>'></asp:TextBox>
    </EditItemTemplate> 
    
        <ItemStyle Width="150px" />
    
</asp:TemplateField>
    
    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Product">
    <ItemTemplate>
        <asp:Label ID="lblProduct" runat="server"
            Text='<%# Eval("product")%>'></asp:Label>
    </ItemTemplate>
         <FooterTemplate>
                <asp:TextBox ID="txtProduct" Width = "100px"  runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtProduct" runat="server"
            Text='<%# Eval("product")%>'></asp:TextBox>
    </EditItemTemplate> 
    
        <ItemStyle Width="150px" />
    
</asp:TemplateField>
        <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "ProductID">
    <ItemTemplate>
        <asp:Label ID="lblProductID" runat="server"
            Text='<%# Eval("productid")%>'></asp:Label>
    </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtProductID" Width = "90px"  runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtProductID" runat="server"
            Text='<%# Eval("productid")%>'></asp:TextBox>
    </EditItemTemplate> 
    
            <ItemStyle Width="150px" />
    
</asp:TemplateField>

    
    
    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Plan Bought">
    <ItemTemplate>
        <asp:Label ID="lblplanname" runat="server"
            Text='<%# Eval("planname")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtplanname" Width = "120px"  runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtplanname" runat="server"
            Text='<%# Eval("planname")%>'></asp:TextBox>
    </EditItemTemplate> 
    
        <ItemStyle Width="150px" />
   
</asp:TemplateField>

    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "For Domain">
    <ItemTemplate>
        <asp:Label ID="lbldomain" runat="server"
            Text='<%# Eval("domain")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtdomain" Width="70px"   runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtdomain" runat="server"
            Text='<%# Eval("domain")%>'></asp:TextBox>
    </EditItemTemplate> 
    
        <ItemStyle Width="150px" />
   
</asp:TemplateField>
        <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Price">
    <ItemTemplate>
        <asp:Label ID="lblprice" runat="server"
            Text='<%# Eval("price")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtprice" runat="server"
            Text='<%# Eval("price")%>'></asp:TextBox>
    </EditItemTemplate> 
    <FooterTemplate>
                <asp:TextBox ID="txtprice" Width = "100px"  runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemStyle Width="150px" />
    
</asp:TemplateField>

<asp:TemplateField>
    <ItemTemplate>
        <asp:ImageButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("orderid")%>' OnClientClick = "return confirm('Do you want to delete?')" ImageUrl="~/css/images/cancel.png" ToolTip="Delete" OnClick="lnkRemove_Click1" />

    </ItemTemplate>
    <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add New Order" OnClick = "AddNewOrder" ForeColor="White" BackColor="#C2D69B" />
            </FooterTemplate> 
</asp:TemplateField>
<asp:CommandField  ShowEditButton="True" />
</Columns>
<AlternatingRowStyle BackColor="#C2D69B"  />
    <HeaderStyle BackColor="Violet" />
    <PagerSettings FirstPageText="First" />
</asp:GridView>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID = "GridView1" />
</Triggers>
</asp:UpdatePanel>
    

</div>
    <br />
        <br />
      <h2>  <asp:Label ID="transadmins" runat="server">Transactions</asp:Label></h2>
 <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDatatrans">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                <asp:BoundField DataField="txid" HeaderText="txid" SortExpression="txid" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:BoundField DataField="payername" HeaderText="payername" SortExpression="payername" />
                <asp:BoundField DataField="payeremail" HeaderText="payeremail" SortExpression="payeremail" />
                <asp:BoundField DataField="productbought" HeaderText="productbought" SortExpression="productbought" />
                <asp:BoundField DataField="buyeremail" HeaderText="buyeremail" SortExpression="buyeremail" />
                <asp:BoundField DataField="buyername" HeaderText="buyername" SortExpression="buyername" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDatatrans" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog= hostingdb;Persist Security Info=True;User ID= hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [paypal_payment]"></asp:SqlDataSource>
        <br />

</div>

</asp:Content>
