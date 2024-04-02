<%@ Page Title="Support" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="support.aspx.cs" Inherits="site.support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="css/success.css" rel="stylesheet" type="text/css" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:30px;">
        <asp:Image runat="server" ID="supimg" ImageUrl="~/css/images/supportimg.PNG"  Width="930px" />
      
        
        <br /><div style="align-content:center; height: 109px; padding:20px 20px 20px 100px; width: 770px;">
        <div class="phone" style="margin: 0px 0px 0px 25px; float: left; width: 160px; padding: 9px 0px 0px 53px;  background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-position: -355px 0px; background-repeat: no-repeat no-repeat;">
            <strong class="title" style="display: block; padding: 0px 0px 1px; font-style: normal; font-variant: normal; font-weight: normal; font-size: 18px; line-height: 22px; font-family: lucidasansdemibold, sans-serif; color: rgb(74, 181, 77);" title="Sales Toll Free Number">18001802222</strong><p style="margin: 0px; padding: 0px 0px 10px;">
                <strong><asp:Label ID="direct" Text="Direct Support Number" runat="server"></asp:Label></strong></p>
        </div>
        <div class="email" style="margin: 0px 0px 0px 20px; float: left; width: 195px; padding: 10px 0px 0px 61px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-position: -1036px 0px; background-repeat: no-repeat no-repeat;">
            <strong class="title" style="display: block; padding: 0px 0px 1px; font-style: normal; font-variant: normal; font-weight: normal; font-size: 18px; line-height: 22px; font-family: lucidasansdemibold, sans-serif; color: rgb(74, 181, 77);"><a href="mailto:notification@pochost.com" style="text-decoration: none; color: rgb(74, 181, 77);" target="_blank">Create a Support Ticket</a></strong><p style="margin: 0px; padding: 0px 0px 10px;">
              <asp:Label id="drop" Text=" Drop us an email at" runat="server"></asp:Label>&nbsp;<a href="mailto:notification@pocohost.com" style="text-decoration: none; color: rgb(51, 102, 153);" title="Create a Support Ticket">notification@pochost.com</a></p>
        </div>
      <div class="request" style="margin: 0px 0px 0px 20px; float: left; width: 160px; padding: 10px 0px 0px 61px; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-position: -1036px 0px; background-repeat: no-repeat no-repeat;">
            <strong class="title" style="display: block; padding: 0px 0px 1px; font-style: normal; font-variant: normal; font-weight: normal; font-size: 18px; line-height: 22px; font-family: lucidasansdemibold, sans-serif; color: rgb(74, 181, 77);"><a href="mailto:notification@pochost.com" style="text-decoration: none; color: rgb(74, 181, 77);" target="_blank">Request A Quote</a></strong><p style="margin: 0px; padding: 0px 0px 10px;">
              <asp:Label id="Label1ds2" Text=" Get details on our Product " runat="server"></asp:Label><a href="RequestQuote.aspx" style="text-decoration: none; color: rgb(51, 102, 153);" title="Create a Support Ticket">here</a></p>
        </div>
       </div> 
    </div>
                
    
</asp:Content>
