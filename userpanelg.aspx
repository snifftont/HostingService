<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="userpanel.aspx.cs" Inherits="site.userpanel" %>
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

        BlockUI("adminuser");
        $.blockUI.defaults.css = {};
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="adminuser" style="align-content:center;text-align:center;padding:30px" >
 <%--
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<%--<asp:GridView ID="GridViewuser" runat="server" 
AutoGenerateColumns = "false" Font-Names = "Arial"
Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
HeaderStyle-BackColor="Violet" AllowPaging ="true" ShowFooter="true"
OnPageIndexChanging = "OnPaging" OnRowEditing="EditUser" OnRowCancelingEdit="CancelEdit" OnRowUpdating="Updateuser" PageSize = "15" PagerSettings-FirstPageText="First" PagerSettings-LastPageText="Last" PagerSettings-NextPageText="Next" PagerSettings-PreviousPageText="Previous" PagerSettings-Mode="NumericFirstLast" SelectedRowStyle-BackColor="#CCFFFF" OnRowDataBound="GridViewuser_RowDataBound">
<Columns>
<asp:TemplateField   HeaderText = "Userid">
    <ItemTemplate>
        <asp:Label ID="adminuid" runat="server"
        Text='<%# Eval("uid")%>'></asp:Label>
    </ItemTemplate>
    
   
    <FooterTemplate>
                <asp:TextBox ID="txtadminuid"   runat="server"></asp:TextBox>
            </FooterTemplate>
</asp:TemplateField>
<asp:TemplateField   HeaderText = "Name">
    <ItemTemplate>
        <asp:Label ID="lblCName" runat="server"
                Text='<%# Eval("name")%>'></asp:Label>
    </ItemTemplate>
    <FooterTemplate>
                <asp:TextBox ID="txtCName" runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtContactName" runat="server"
            Text='<%# Eval("name")%>'></asp:TextBox>
    </EditItemTemplate> 
   
   
</asp:TemplateField>
<asp:TemplateField  HeaderText = "Email">
    <ItemTemplate>
        <asp:Label ID="lblcsmmail" runat="server"
            Text='<%# Eval("email")%>'></asp:Label>
    </ItemTemplate>
       <FooterTemplate>
                <asp:TextBox ID="txtcsmmail"   runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtemailName" runat="server"
            Text='<%# Eval("email")%>'></asp:TextBox>
    </EditItemTemplate> 
    
   
    
</asp:TemplateField>
    <asp:TemplateField   HeaderText = "Password">
    <ItemTemplate>
        <asp:Label ID="lbpas" runat="server"
            Text='<%# Eval("password")%>'></asp:Label>
    </ItemTemplate>
        
     <FooterTemplate>
                <asp:TextBox ID="txtpas"   runat="server"></asp:TextBox>
            </FooterTemplate>
    
        
    
</asp:TemplateField>
    
    <asp:TemplateField HeaderText = "Address line1">
    <ItemTemplate>
        <asp:Label ID="lbladminaddl1" runat="server"
            Text='<%# Eval("addressl1")%>'></asp:Label>
    </ItemTemplate>
         <FooterTemplate>
                <asp:TextBox ID="adtxtadl1" textmode="MultiLine"  runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txteditaddl1" runat="server" textmode="MultiLine"
            Text='<%# Eval("addressl1")%>'></asp:TextBox>
    </EditItemTemplate> 
    
        
    
</asp:TemplateField>
        <asp:TemplateField  HeaderText = "Address Line2">
    <ItemTemplate>
       
        <asp:Label ID="lblProductID" runat="server"
            Text='<%# Eval("addressl2")%>'></asp:Label>
    </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtaddressl2" textmode="MultiLine"  runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtaddress1l2" runat="server" textmode="MultiLine"
            Text='<%# Eval("addressl2")%>'></asp:TextBox>
    </EditItemTemplate> 
    
           
    
</asp:TemplateField>

    
    


    
    
        
   

        <asp:TemplateField  HeaderText = "Activation Code">
    <ItemTemplate>
        <asp:Label ID="lblcode" runat="server"
            Text='<%# Eval("code")%>'></asp:Label>
    </ItemTemplate>
    
    <FooterTemplate>
                <asp:TextBox ID="txtcode1" runat="server"></asp:TextBox>
  </FooterTemplate>
            
    
</asp:TemplateField>

    <%--<asp:TemplateField  HeaderText = "Locked Status">
    <ItemTemplate>
        <asp:Label ID="lbllock" runat="server"
            Text='<%# Eval("code")%>'></asp:Label>
    </ItemTemplate>
    
    <FooterTemplate>
                <asp:TextBox ID="txtcode1" runat="server"></asp:TextBox>
            </FooterTemplate>
            
    
</asp:TemplateField>

        <asp:TemplateField  HeaderText = "City">
    <ItemTemplate>
        <asp:Label ID="lblCity" runat="server"
            Text='<%# Eval("city")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtadmincity" runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcit" runat="server" Text='<%# Eval("city")%>'></asp:TextBox>
    </EditItemTemplate> 
    
       
   
</asp:TemplateField>
    <asp:TemplateField  HeaderText = "Country">
    <ItemTemplate>
        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("country")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
           <asp:TextBox ID="txtadminctry" runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:Label runat="server" ID="lcountry" Visible="false" Text='<%# Eval("country")%>'></asp:Label>
        <asp:DropDownList ID="ddcl" runat="server"></asp:DropDownList>
    </EditItemTemplate> 
    
   
</asp:TemplateField>

       <asp:TemplateField  HeaderText = "Usertype">
    <ItemTemplate>
        <asp:Label ID="lblutpe" runat="server" Text='<%# Eval("utype")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtautpe" MaxLength="5" runat="server"></asp:TextBox>
            </FooterTemplate>
    <EditItemTemplate>
        <asp:Label ID="type" visible="false" runat="server" Text='<%# Eval("utype")%>'></asp:Label>
        <asp:DropDownList ID="dduserlist" runat="server">
            <asp:ListItem Text="basic" Value="basic" Selected="True"></asp:ListItem>
            <asp:ListItem Text="admin" Value="admin"></asp:ListItem>
        </asp:DropDownList>

    </EditItemTemplate> 
    
   
</asp:TemplateField>

           <asp:TemplateField  HeaderText = "OTP">
    <ItemTemplate>
        <asp:Label ID="lblutpe" runat="server" Text='<%# Eval("OTP")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtautpe" MaxLength="4" runat="server"></asp:TextBox>
            </FooterTemplate>
 
</asp:TemplateField>

<asp:TemplateField  HeaderText = "Country code">
    <ItemTemplate>
        <asp:Label ID="lblcde" runat="server" Text='<%# Eval("CCode")%>'></asp:Label>
    </ItemTemplate>
 <FooterTemplate>
                <asp:TextBox ID="txtacde"  runat="server"></asp:TextBox>
            </FooterTemplate>
   
  
</asp:TemplateField>

<asp:TemplateField>
    <ItemTemplate>
        <asp:ImageButton ID="userdelete" runat="server" CommandArgument='<%# Eval("uid")%>' OnClientClick = "return confirm('Do you want to delete?')" ImageUrl="~/css/images/cancel.png" ToolTip="Delete" OnClick="userdelete_Click" />

    </ItemTemplate>
    <FooterTemplate>
                <asp:Button ID="btnAdduser" runat="server" Text="Add User" OnClick="btnAdduser_Click" ForeColor="White" BackColor="#C2D69B" />
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
<asp:AsyncPostBackTrigger ControlID = "GridViewuser" />
</Triggers>
</asp:UpdatePanel>--%>

    
    
       
            
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="uid" DataSourceID="SqlDatuser" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" ReadOnly="True" SortExpression="password" />
                <asp:BoundField DataField="addressl1" HeaderText="AddressL1" SortExpression="addressl1" />
                <asp:BoundField DataField="addressl2" HeaderText="Addressl2" SortExpression="addressl2" />
                <asp:CheckBoxField DataField="isapproved" HeaderText="isapproved" SortExpression="isapproved" />
                <asp:BoundField DataField="code" HeaderText="Code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="utype" HeaderText="User Type" SortExpression="utype" />
                <asp:BoundField DataField="OTP" HeaderText="OTP" ReadOnly="True" SortExpression="OTP" />
                <asp:BoundField DataField="CCode" HeaderText="CCode" SortExpression="CCode" />
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
        <asp:SqlDataSource ID="SqlDatuser" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>

    
    
       
            
        
    </div>
</asp:Content>
