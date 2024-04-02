<%@ Page Title="Provide Domian For Services" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AskdomainH.aspx.cs" Inherits="site.AskdomainH" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:30px;">
        <div id="diviask" >
                <br />
                <h3><asp:Label ID="headaskdH" runat="server" Text="Get Hosting Account Today.." ForeColor="#0066CC"></asp:Label></h3>
                <asp:Label ID="Label1" runat="server" Text="Take your first step towards entrepreneurship by creating your online identity.Choosing our hosting ensures that your website never crashes and you get a host of free services.Choose the best hosting to create the best website." ForeColor="Black" style="text-align: justify"></asp:Label>
           
            </div >
        <div id="center" > 
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1" Enabled="False">Register Domain</asp:ListItem>
                <asp:ListItem Value="2" Enabled="False">Transfer Domain</asp:ListItem>
                <asp:ListItem Value="3" Selected="True">Already have a Domain,Will change Server Setting Later</asp:ListItem>
            </asp:RadioButtonList>
        </div>
            <div id="asknamediv">
                <asp:TextBox ID="searchdomain" runat="server"  CssClass="ask" Width="518px" Height="43px" parentholder="Please Enter your domain here" MaxLength="40"></asp:TextBox>
                
                &nbsp;<asp:Button ID="gobutton" runat="server" BackColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="48px" Text="GO" Width="57px" OnClick="gobutton_Click" ValidationGroup="1" />
                
               
                
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="searchdomain" ErrorMessage="Web Address Not Valid" ForeColor="Red" ValidationGroup="1" ValidationExpression="[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>--%>
            
                <br />
            <p style="padding-top:20px; height: 20px;"> <asp:RequiredFieldValidator ID="RequiredFieldhostemial" runat="server" ErrorMessage="The email address could not be empty" ControlToValidate="searchdomain" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </p>
            </div>
        </div> 
    <br />
           <div class="dom">
             <asp:ScriptManager ID="ScriptManagerask" runat="server"></asp:ScriptManager>
               <asp:UpdatePanel ID="UpdatePanelask" runat="server"><ContentTemplate>
            <asp:Label ID="select" runat="server" Text="Terms :" Font-Bold="False" Font-Size="Medium" ForeColor="Black" Font-Names="Ebrima"></asp:Label>&nbsp;
           
            <asp:DropDownList ID="d1" AppendDataBoundItems="true" runat="server" Height="31px" Width="119px" Font-Bold="False" Font-Names="Ebrima" Font-Size="Medium" DataSourceID="SqlTERMS" DataTextField="Dterms" DataValueField="DValue" OnSelectedIndexChanged="d1_SelectedIndexChanged" AutoPostBack="True">
 <asp:ListItem>Select Months</asp:ListItem>
            </asp:DropDownList><strong>  <asp:Label ID="pri" CssClass="d" runat="server" Text="Price :" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Font-Names="Ebrima"></asp:Label></strong>
               <asp:Label ID="totpri" runat="server" Font-Names="Ebrima"  Font-Size="Medium" ForeColor="#333333"></asp:Label>
               <asp:SqlDataSource ID="SqlTERMS" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Terms]"></asp:SqlDataSource>
</ContentTemplate></asp:UpdatePanel>
             
               <br />
     <br />    
          
               
         </div>

</asp:Content>
