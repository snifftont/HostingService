<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="siteadmin.aspx.cs" Inherits="site.siteadmin" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color:black;margin:20px;">

        <table style="width:100%;padding:30px;" class="margin">
            <caption style="background-color: rgb(7, 147, 235); height: 47px;">
                <br />
                <asp:Label runat="server" ID="welcomedash" Text="Welcome to Admin Panel" Font-Names="Ebrima" Font-Size="XX-Large"></asp:Label></caption>
            <tr>
                <td><asp:Label runat="server" Text="Summary" Font-Size="Medium" id="summary"></asp:Label></td>
                </tr><tr>
                <td>
                    <asp:DataList ID="Total_orders" runat="server" DataSourceID="sqltorder" Font-Bold="False" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Label ID="Totalodr" runat="server" Text=" Total orders:"></asp:Label>
                            <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                            

                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="sqltorder" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select distinct count(*) from orders"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:DataList ID="Orders_success" runat="server" DataSourceID="sqldatasucses" Font-Bold="False" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Label ID="columan" runat="server" Text="Total Orders Confirmed: "></asp:Label>                            <asp:Label ID="Columns1Label" runat="server" Text='<%# Eval("Column1") %>' />
                            
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="sqldatasucses" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) from paypal_payment "></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" Font-Size="Medium" ForeColor="Black" Text="Total Sale : $"></asp:Label>
                    <asp:DataList ID="DataList37" runat="server" DataSourceID="SqlDataS1" Font-Bold="False" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                           
                            <asp:Label ID="SumamountLabel" runat="server" Text='<%# Eval("Sumamount") %>' />
                           
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataS1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select COALESCE(sum(cast(amount as float)),0) as Sumamount from   paypal_payment"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                
                
            </tr>
           </table> 
     
    </div>
   
   <div>
                   <div class="margin">
                       <table class="auto-style1" style="border-style:solid; border-width: 1px; border-color: #000000;">
                        <tr>
                            <td style="background-color: rgb(7, 147, 235);">&nbsp;</td>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="Today" runat="server" Text="Today" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="cryr" runat="server" Text="Current Year" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="pryear" runat="server" Text="Previous Year" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            
                        </tr>
                        <tr>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="Orders" runat="server" Text="Orders" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <td>
                                <asp:DataList ID="ADDataList1" runat="server" DataSourceID="Sqltodayad" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                    <ItemTemplate>
                                        
                                        <asp:Label ID="today_orderLabel" runat="server" Text='<%# Eval("today_order") %>' />
                                        
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="Sqltodayad" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) as today_order from orders where [date]=getdate()"></asp:SqlDataSource>
                                </td>
                            <td>
                                <asp:DataList ID="ADDataList2" runat="server" DataSourceID="sqladdl2" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                    <ItemTemplate>
                                        
                                        <asp:Label ID="cur_yr_ordrLabel" runat="server" Text='<%# Eval("cur_yr_ordr") %>' />
                                        
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="sqladdl2" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) as cur_yr_ordr from orders where datepart(year,[date])=(year(getdate()))"></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:DataList ID="DataList13" runat="server" DataSourceID="Sqldlpy" Font-Size="Medium" ForeColor="Black">
                                    <ItemTemplate>
                                        
                                        <asp:Label ID="cur_yr_ordrLabel" runat="server" Text='<%# Eval("cur_yr_ordr") %>' />
                                       
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="Sqldlpy" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) as cur_yr_ordr from orders where datepart(year,[date])=(year(getdate()))-1"></asp:SqlDataSource>
                            </td>
                            
                        </tr>
                        <tr>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="Label1" runat="server" Text="Orders Confirmed" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </th>
                            <td>
                                <asp:DataList ID="Adlist2" runat="server" DataSourceID="Sqltdaycon" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="ColumLabel" runat="server" Text='<%# Eval("Column1") %>' />
                                       
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="Sqltdaycon" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) from orders, paypal_payment where orders.orderid=paypal_payment.orderid and  orders.[date]=getdate() "></asp:SqlDataSource>
                                </td>
                            <td>
                                <asp:DataList ID="DataList22" runat="server" DataSourceID="dl22" Font-Size="Medium" ForeColor="Black">
                                    <ItemTemplate>
                                        
                                        <asp:Label ID="ColumnLabel" runat="server" Text='<%# Eval("Column1") %>' />

                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="dl22" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) from orders, paypal_payment where orders.orderid=paypal_payment.orderid and  datepart(year,orders.[date])=(year(getdate())) "></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:DataList ID="DataList23" runat="server" DataSourceID="datalst23" Font-Size="Medium" ForeColor="Black">
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="Columnki1Label" runat="server" Text='<%# Eval("Column1") %>' />
                                       
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="datalst23" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select count(*) from orders, paypal_payment where orders.orderid=paypal_payment.orderid and  datepart(year,orders.[date])=(year(getdate())-1) "></asp:SqlDataSource>
                            </td>
                            
                        </tr>
                        <tr>
                            <th style="background-color: rgb(7, 147, 235);">
                                <asp:Label ID="Lsale" runat="server" Text="Sale ($)" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <td>
                                <asp:DataList ID="DataList31" runat="server" DataSourceID="saleiscurent" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Font-Size="Medium" ForeColor="Black">
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="SumamountLabel" runat="server" Text='<%# Eval("Sumamount") %>' />
                 </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="saleiscurent" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select COALESCE(sum(cast(amount as float)),0) as Sumamount from   paypal_payment where paypal_payment.[date]=getdate()"></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:DataList ID="DataList36" runat="server" DataSourceID="sale36data" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                    <ItemTemplate>
                                   
                                        <asp:Label ID="Column1Lhgabel" runat="server" Text='<%# Eval("Column1") %>' />
                                    

                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="sale36data" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select COALESCE(sum(cast(amount as float)),0) from paypal_payment where datepart(year,paypal_payment.[date])=(year(getdate()))"></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:DataList ID="data33" runat="server" DataSourceID="salepreiosa" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                    <ItemTemplate>
                                        
                                        <asp:Label ID="Column1Ljkabel" runat="server" Text='<%# Eval("Column1") %>' />

                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="salepreiosa" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select COALESCE(sum(cast(amount as float)),0) from paypal_payment where datepart(year,paypal_payment.[date])=(year(getdate())-1)"></asp:SqlDataSource>
                            </td>
                            
                        </tr>
                    </table>
                   </div>
       <div class="margin">
           <div style="width:43%; float:left"></div>
           <div style="width:50%;float:right"></div>
       </div>
               </div>
   
   
    
   
   
   
</asp:Content>
