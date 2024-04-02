<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="site.cart" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cartpage.css" rel="stylesheet" type="text/css" />
   
      

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-top:10px; margin-bottom:20px; min-height:500px; margin-left:10px;">
            <h1><asp:Label runat="server" ID="cartname" Text="Your Cart:"></asp:Label></h1>
            

               
        <div id="gridcartitem" style="margin-left: 40px; margin-right:40px;">
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="gridcartitem" AutoGenerateRows="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="831px"  Font-Bold="False" Font-Names="Calibri" Font-Size="Medium" >
                <AlternatingRowStyle BackColor="White"  />
                <Columns>

                    <asp:BoundField DataField="product" HeaderText="Product" SortExpression="product" />
                    <asp:BoundField DataField="planname" HeaderText="Plan name" SortExpression="planname" />
               
                    <asp:BoundField DataField="dname" HeaderText="Domain Name" SortExpression="dname" />
                     <asp:BoundField DataField="terms" HeaderText="Terms(in months)" SortExpression="terms" />
               
                    
                     
                    <asp:BoundField DataField="payvalue" HeaderText="Subtotal" SortExpression="payvalue" DataFormatString="$ {0:d}" />
               
                    
                     </Columns>
                <EditRowStyle BackColor="Silver" />
                
                <EmptyDataRowStyle Font-Bold="True" Font-Size="Medium" />
                <EmptyDataTemplate>
                   <h1> <asp:Label ID="Label1" Text="Your cart is empty." runat="server"></asp:Label></h1>
                    <asp:LinkButton ID="LinkButton1" Text="Go back to Shop now" PostBackUrl="~/Default.aspx" runat="server"></asp:LinkButton>
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





           <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=;Initial Catalog=;User ID=;Password=" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [cartvalues]"></asp:SqlDataSource>--%>
           <asp:Label ID="Ltotal" runat="server" Font-Bold="True" Text="Total Payable Amount :" Font-Size="Medium"></asp:Label>
              
            <asp:Label runat="server" Text="$" ID="inr" Font-Bold="True" Font-Size="Medium"></asp:Label><asp:Label ID="TotalLabel" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <table class="alignright">
                <tr>
           <td> <asp:LinkButton ID="buyhosting"  runat="server" OnClick="buyhosting_Click1">Buy Hosting</asp:LinkButton>
           &nbsp;&nbsp;  </td> <td><asp:LinkButton ID="dtrans" runat="server">Buy Domain Transfer</asp:LinkButton>
            </td>
                    </tr>
                <tr>
           <td> &nbsp;</td> <td>&nbsp;</td>
                    </tr></table>
            <br />
            <br />
           
            <asp:Button ID="order" runat="server" Text="Confirm &amp; Checkout" BackColor="#33CC33" Font-Bold="False" Font-Names="Ebrima" Font-Size="Medium" CssClass="flatbtn-blu" Height="46px" Width="250px" /><br />
            
            
<asp:Button ID="order1" runat="server" Text="Confirm &amp; Checkout" OnClick="order1_Click1" BackColor="#33CC33" Font-Bold="False" Font-Names="Ebrima" Font-Size="Medium" CssClass="flatbtn-blu" Height="46px" Width="250px" ValidationGroup="cartconfi" />
            
            
            <br />
            
            <div id="modALS">      
             <asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
          
            
                <br />
          
            
 <cc1:ModalPopupExtender ID="mp3" runat="server" PopupControlID="Panel1" TargetControlID="order"

    CancelControlID="btnCloseo" BackgroundCssClass="modalBackground1">

</cc1:ModalPopupExtender>
       
                 
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup1" align="center" style = "display:none">
    
       
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"><ContentTemplate>
        
   <h1><asp:Label ID="Labelo" runat="server"  Text="Welcome to the Hosting.com!"></asp:Label></h1>
     
      
     <p> <asp:Label runat="server" Text="Email Address" ID="lblemailo"></asp:Label></p>
     <asp:TextBox runat="server" ID="txtemailo"  class="txtfield" Width="344px" 
            AutoCompleteType="Disabled" ValidationGroup="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1o" runat="server" 
            ErrorMessage="Email Address Required" ForeColor="#FF3300" 
            ControlToValidate="txtemailo" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1o" runat="server" 
            ErrorMessage="Email not valid" ForeColor="#FF3300" 
            ControlToValidate="txtemailo" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="1"></asp:RegularExpressionValidator>
      <p> <asp:Label ID="lblpasswordo" runat="server" Text="Password"></asp:Label></p>
      <asp:TextBox ID="passcodeo" runat="server" class="txtfield" TextMode="Password" 
            Width="344px" AutoCompleteType="Disabled" ValidationGroup="1"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2o" runat="server" 
            ErrorMessage="Password Required" ForeColor="#FF3300" 
            ControlToValidate="passcodeo" ValidationGroup="1"></asp:RequiredFieldValidator><br />
     
        <asp:Button ID="loginclick1" runat="server" CssClass="submitreset" Text="Login" Width="100px" Height="46px" OnClick="loginclicko_Click" ValidationGroup="1" />
        <br />
       <p><asp:Label ID="lblmsgo" runat="server" ForeColor="#FF3300"></asp:Label></p>
     
        <asp:LinkButton ID="ve" runat="server" Text="Already have Verification code!!" ></asp:LinkButton>
          

 

               <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel2" TargetControlID="ve"

    CancelControlID="btnClo" BackgroundCssClass="modalBackground1">

</cc1:ModalPopupExtender>
        <asp:Panel ID="Panel2" runat="server" CssClass="modalPopup1" align="center" style = "display:none">
    
       
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional"><ContentTemplate>
        
         <table>
           
            <tr>
                <td> <asp:Label ID="Label1o" runat="server" Text="Already have verification code?Enter Details below"></asp:Label><br />
                  <p> <asp:Label ID="codeem" runat="server" Text="Email Address"></asp:Label><br /> <asp:TextBox runat="server" TextMode="Email"  ID="veriemail"  class="txtfield" Height="31px"></asp:TextBox></p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Email Required" ValidationGroup="code" ControlToValidate="veriemail"></asp:RequiredFieldValidator><br />
                     <p>  <asp:Label ID="codela" runat="server" Text="Verification code"></asp:Label><br />  <asp:TextBox runat="server" ID="codecvo" MaxLength="4" TextMode="Password" class="txtfield" Height="31px"></asp:TextBox></p><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldcode" runat="server" ErrorMessage="*Code Required" ValidationGroup="code" ControlToValidate="codecvo"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td><asp:label ID="test1" ForeColor="Violet"  runat="server"></asp:label> <br />
 <asp:Button runat="server" Text="Submit" ID="cvsubmito" CssClass="flatbtn" OnClick="cvsubmito_Click" ValidationGroup="code" />&nbsp;
   
                </td>
                 
            </tr>
        </table>
         </ContentTemplate> </asp:UpdatePanel><asp:Button ID="btnClo" runat="server" Text="Close" />  
</asp:Panel>

        <br /><asp:LinkButton ID="ce" Text="Do not have Account? Create One" runat="server" PostBackUrl="~/Default.aspx"></asp:LinkButton>

            <cc1:ModalPopupExtender ID="mp" runat="server" PopupControlID="Pan" TargetControlID="ce"
    CancelControlID="bc" BackgroundCssClass="mdlBackground">
</cc1:ModalPopupExtender>
<asp:Panel ID="Pan" runat="server" CssClass="mdlPopup" align="center" style = "display:none">
   <asp:UpdatePanel ID="c3" runat="server"><ContentTemplate>
     <div>
                  <asp:Table ID="Table1" runat="server" Width="600px" Caption="Sign up here" CaptionAlign="Left" Font-Names="Ebrima" ForeColor="Black" Font-Size="Medium" Height="341px">
            
           <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server">Name<asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="mdltxt1"  ></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server"><asp:TextBox ID="mdltxt1" Height="30px" runat="server" Placeholder="Enter Name"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server">Email Address<asp:RequiredFieldValidator ID="Req" ControlToValidate="mdltxt2" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server"><asp:TextBox runat="server" ID="mdltxt2" Height="30px" OnTextChanged="mdltxt2_TextChanged" TextMode="Email" AutoPostBack="True"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell6" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell10" runat="server"><asp:Image ID="imgstatus" runat="server" Width="17px" Height="17px"/>
<asp:Label ID="lblStatus" runat="server"></asp:Label>
                    </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableCell11" runat="server">Password<asp:RequiredFieldValidator ID="Rr1" runat="server" ControlToValidate="mdltxt3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell12" runat="server"><asp:TextBox ID="mdltxt3" Height="30px" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell14" runat="server">Confirm Password<asp:RequiredFieldValidator ID="Red" ControlToValidate="mdltxt4" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server"><asp:TextBox ID="mdltxt4" Height="30px" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell ID="TableCell16" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell17" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell18" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell19" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell20" runat="server"></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow5" runat="server">
                <asp:TableCell ID="TableCell21" runat="server">Address Line1<asp:RequiredFieldValidator ID="Requi" ControlToValidate="mdltxt5" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell ID="TableCell22" runat="server"><asp:TextBox ID="mdltxt5" Height="50px"  runat="server" MaxLength="30" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell23" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell24" runat="server">Address Line2
                </asp:TableCell>
                <asp:TableCell ID="TableCell25" runat="server"><asp:TextBox runat="server" Height="50px" TextMode="MultiLine" id="mdltxt6" MaxLength="30"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
             <asp:TableRow ID="TableRow6" runat="server">
                <asp:TableCell ID="TableCell26" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell27" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell28" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell29" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell30" runat="server"></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow7" runat="server">
                <asp:TableCell ID="TableCell31" runat="server">City
                </asp:TableCell>
                <asp:TableCell ID="TableCell32" runat="server"><asp:TextBox ID="mdltxt7" Height="30px" runat="server"></asp:TextBox> </asp:TableCell>
                <asp:TableCell ID="TableCell33" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell34" runat="server">Country
                </asp:TableCell>
                <asp:TableCell ID="TableCell35" runat="server">
                    <asp:DropDownList ID="DropDow" DataSourceID="SqlDataSource1" Width="125px" DataTextField="Country" DataValueField="Country" runat="server"></asp:DropDownList> <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Country] FROM [Currencies]"></asp:SqlDataSource></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow8" runat="server">
                <asp:TableCell ID="TableCell36" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell37" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell38" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell39" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell40" runat="server"></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow ID="TableRow9" runat="server">
                <asp:TableCell ID="TableCell41" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell42" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell43" runat="server">
                    <asp:Button ID="co" runat="server" Text="Create Account" OnClick="co_Click" CssClass="submitreset" /></asp:TableCell>
                <asp:TableCell ID="TableCell44" runat="server">
                </asp:TableCell>
                <asp:TableCell ID="TableCell45" runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                 <asp:Image ID="createstatus" runat="server" Height="20px" />
        <asp:Label ID="error" runat="server"></asp:Label>
    </div>
       </ContentTemplate></asp:UpdatePanel><br />
    <asp:Button ID="bc" runat="server" Text="Close" />
</asp:Panel>





         
   </ContentTemplate> </asp:UpdatePanel><asp:Button ID="btnCloseo" runat="server" Text="Close" />  
</asp:Panel>
          
         </div>

            </div>
    </div>



</asp:Content>