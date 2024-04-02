<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="site.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="m-slider">
					<div class="slider-holder">
						<span class="slider-shadow"></span>
						<div class="slider flexslider">
							<ul class="slides">
								<li>
									<div class="img-holder">
										<img src="css/images/slide-img1.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2><asp:label runat="server" Text="Get Offers on Windows Hosting" ID="Slideh1"></asp:label></h2>
										<div class="box-cnt">
											<p><asp:Label ID="Labelslide" runat="server" Text="Get 1 months Hosting free on Ultimate hosting" ForeColor="Yellow"                                                Font-Size="Medium"></asp:Label></p>
										</div>
                                        <asp:LinkButton runat="server" ID="slidebutton2" CssClass="grey-btn" Text="Buy Now"></asp:LinkButton>
										
									</div>
								</li>
								<li>
									<div class="img-holder">
										<img src="css/images/slide-img2.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2><asp:label runat="server" Text="Transfer Your Domain" ID="slideh2"></asp:label></h2>
										<div class="box-cnt">
											<p><asp:Label ID="Labelslide2" runat="server" Text="Claim your 1 Month Hosting Free!!" ForeColor="Yellow" 
                                                    Font-Size="X-Large"></asp:Label></p>
										</div>
										<asp:LinkButton runat="server" ID="slidetransfer" CssClass="grey-btn" Text="Request Transfer"></asp:LinkButton>
									</div>
								</li>
								<li>
									<div class="img-holder">
										<img src="css/images/slide-img1.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2><asp:label runat="server" Text="Call Us Now 1800-1800-180" ID="Slideh3"></asp:label></h2>
										<div class="box-cnt">
											<p><asp:label runat="server" Text="Get Connected with Leading Hosting Company,Get  Reliable and 27 X 7 Support on Hosting  " ID="Labelslide3"></asp:label></p>
                                            
										</div>
										<%--<a href="#" class="grey-btn">request a demo</a>--%>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>		
				<!-- end of slider -->
				<!-- main -->
				<div class="main" ">
					<section> 
                    <div id="plans">
                    <table cellpadding="2" cellspacing="15" class="style7">
                    <caption runat="server" id="plantable" 
                            style="background-color: #FF9900; font-family: Ubuntu, sans-serif; font-weight: bold; font-size: medium; color: #000000; height: 30px;">
                        CHOOSE YOUR BEST HOSTING PLAN</caption>
                        <tr>
                            <td class="style13">
                              <%--  plan1--%>
                                <div style="width:172px; height:347px;  background-image: url('css/images/p1.png'); text-align: center;">
                                   
                                   
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlP1" Font-Bold="True" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="15px" RepeatLayout="Flow">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="PLANLabel" runat="server" Text='<%# Eval("PLAN") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlP1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PLAN] FROM [product] WHERE ([planid] = 1)">
                                        
                                    </asp:SqlDataSource>
                                    <br />
                                   
                                  
                                   <%-- <asp:DataList ID="DataList2" runat="server" DataSourceID="Sqlpri1" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="True" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Height="20px" Font-Names="Times New Roman">
                                        <ItemTemplate>
                                            $
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        <asp:Label ID="pricelable1" runat="server" Text="/Month" Font-Size="Medium"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="Sqlpri1" runat="server" ConnectionString="Data Source=;Initial Catalog=;Persist Security Info=True;User ID=;Password=" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [product] where planid=1"></asp:SqlDataSource>--%>
                                   
                                    <br />
                                   
                                    <asp:DataList ID="DataList3" runat="server" DataSourceID="Sqlfp1" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="20px" RepeatLayout="Flow" Width="172px">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel" Font-Size="60px" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                           <br /> <asp:Label ID="final_pricelabel1" runat="server" Font-Size="Large" Text="Per Month"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="Sqlfp1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=1"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                   <br />
                                    <br />
                                    <asp:Label ID="best" runat="server" Text="BEST FOR STARTUP"  Font-Italic="true" Font-Size="13px" ForeColor="#FF9900"></asp:Label>
                                    <hr style="width:150px; margin-left:8px;"/>
                                   
                                    <asp:DataList ID="DataList4" runat="server" Font-Size="12px"  DataSourceID="Sqlservices" Font-Bold="true" ForeColor="#FF9900" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="webspaceLabel" runat="server" Text='<%# Eval("webspace") %>' />
                                            <br />
                                            
                                            <asp:Label ID="bandwidthLabel" runat="server" Text='<%# Eval("bandwidth") %>' />
                                            <br />
                                           
                                            <asp:Label ID="emailsLabel" runat="server" Text='<%# Eval("emails") %>' />
                                            <br />
                                            
                                            <asp:Label ID="accountlimitLabel" runat="server" Text='<%# Eval("accountlimit") %>' />
                                            <br />
                                            <asp:Label ID="datalimitLabel" runat="server" Text='<%# Eval("datalimit") %>' />
                                            
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>

                                   
                                    <asp:SqlDataSource ID="Sqlservices" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select webspace, bandwidth,emails,accountlimit,datalimit from [product] where planid=1"></asp:SqlDataSource>
                                    <asp:Label runat="server"  Text="Buy This Hosting @ Just" ID="only80" ForeColor="White"></asp:Label>
                                   

                                   <br />
                                    <asp:DataList ID="DataList5" runat="server" Font-Size="15px" DataSourceID="SqlJust1" Font-Bold="true" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Left" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel12" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                            <asp:Label ID="mon1" runat="server" Text="/month"></asp:Label>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlJust1" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=1"></asp:SqlDataSource>
                                   

                                   
                                </div>
                                
                                <asp:Button Text="Buy Now" ID="plan1b" ToolTip="Want To Buy This Plan!! Just Click Me!" runat="server" Width="172px" BackColor="#FF9900" OnClick="plan1b_Click" CssClass="handicon"/>
                            </td>
                            <td class="style13">
                                <%--plan2--%>
                                 <div style="width:172px; height:347px;  background-image: url('css/images/p2.png'); text-align: center;">                                   
                                    <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlP2" Font-Bold="True" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="15px" RepeatLayout="Flow">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="PLANLabel" runat="server" Text='<%# Eval("PLAN") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlP2" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PLAN] FROM [product] WHERE ([planid] = 2)">
                                        
                                    </asp:SqlDataSource>
                                    <br />
                                   
                                   <br />
                                   <%-- <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="True" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Height="20px" Font-Names="Times New Roman">
                                        <ItemTemplate>
                                            $
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        <asp:Label ID="pricelable1" runat="server" Text="/Month" Font-Size="Medium"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>--%>
                                   <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=;Initial Catalog=;Persist Security Info=True;User ID=;Password=" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [product] where planid=2"></asp:SqlDataSource>
                                  --%> 
                                    
                                   
                                    <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource3" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="20px" RepeatLayout="Flow" Width="172px">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel" runat="server" Text='<%#  " $" + Eval("final_price") %>' Font-Size="60px" />
                                           <br /> <asp:Label ID="final_pricelabel1" runat="server" Font-Size="Large" Text="Per Month"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=2"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                   <br />
                                     <br />
                                    <asp:Label ID="Label1" runat="server" Text="BEST FOR CORPORATE"  Font-Italic="True" Font-Size="12px" ForeColor="#54A9A9"></asp:Label>
                                    <hr style="width:150px; margin-left:8px;"/>
                                   
                                    <asp:DataList ID="DataList9" runat="server" Font-Size="12px"  DataSourceID="SqlDataSource4" Font-Bold="true" ForeColor="#54A9A9" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="webspaceLabel" runat="server" Text='<%# Eval("webspace") %>' />
                                            <br />
                                            
                                            <asp:Label ID="bandwidthLabel" runat="server" Text='<%# Eval("bandwidth") %>' />
                                            <br />
                                           
                                            <asp:Label ID="emailsLabel" runat="server" Text='<%# Eval("emails") %>' />
                                            <br />
                                            
                                            <asp:Label ID="accountlimitLabel" runat="server" Text='<%# Eval("accountlimit") %>' />
                                            <br />
                                            <asp:Label ID="datalimitLabel" runat="server" Text='<%# Eval("datalimit") %>' />
                                            
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>

                                   
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select webspace, bandwidth,emails,accountlimit,datalimit from [product] where planid=2"></asp:SqlDataSource>
                                    <asp:Label runat="server"  Text="Buy This Hosting @ Just" ID="Label2" ForeColor="White"></asp:Label>
                                   

                                   <br />
                                    <asp:DataList ID="DataList10" runat="server" Font-Size="15px" DataSourceID="SqlDataSource5" Font-Bold="true" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Left" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel12" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                            <asp:Label ID="mon1" runat="server" Text="/month"></asp:Label>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=2"></asp:SqlDataSource>
                                   

                                   
                                </div>
                                 <asp:Button ID="plan2b" CssClass="handicon" Text="Buy Now" ToolTip="Want To Buy This Plan!! Just Click Me!" runat="server" Width="172px" BackColor="#54A9A9" OnClick="plan2b_Click"/>
                            </td>
                            <td class="style13">
                                <div style="width:172px; height:347px;  background-image: url('css/images/p3.png'); text-align: center;">                                   
                                    <asp:DataList ID="DataList11" runat="server" DataSourceID="SqlDataSource6" Font-Bold="True" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="15px" RepeatLayout="Flow">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="PLANLabel" runat="server" Text='<%# Eval("PLAN") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PLAN] FROM [product] WHERE ([planid] = 3)">
                                        
                                    </asp:SqlDataSource>
                                    <br />
                                   
                                   <br />
                                  <%--  <asp:DataList ID="DataList12" runat="server" DataSourceID="SqlDataSource7" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="True" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Height="20px" Font-Names="Times New Roman">
                                        <ItemTemplate>
                                            $
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        <asp:Label ID="pricelable1" runat="server" Text="/Month" Font-Size="Medium"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="Data Source=;Initial Catalog=;Persist Security Info=True;User ID=;Password=" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [product] where planid=3"></asp:SqlDataSource>
                                  --%>
                                    
                                    
                                   
                                    <asp:DataList ID="DataList13" runat="server" DataSourceID="SqlDataSource8" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="20px" RepeatLayout="Flow" Width="172px">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabeljh" Font-Size="60px" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                           <br /> <asp:Label ID="final_pricelabel1" runat="server" Font-Size="Large" Text="Per Month"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=3"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                   <br />
                                    <br />
                                    
                                    <asp:Label ID="Label3" runat="server" Text="BEST FOR BIG SITES"  Font-Italic="True" Font-Size="13px" ForeColor="#99CC00"></asp:Label>
                                    <hr style="width:150px; margin-left:8px;"/>
                                   
                                    <asp:DataList ID="DataList14" runat="server" Font-Size="12px"  DataSourceID="SqlDataSource9" Font-Bold="true" ForeColor="#99CC00" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="webspaceLabel" runat="server" Text='<%# Eval("webspace") %>' />
                                            <br />
                                            
                                            <asp:Label ID="bandwidthLabel" runat="server" Text='<%# Eval("bandwidth") %>' />
                                            <br />
                                           
                                            <asp:Label ID="emailsLabel" runat="server" Text='<%# Eval("emails") %>' />
                                            <br />
                                            
                                            <asp:Label ID="accountlimitLabel" runat="server" Text='<%# Eval("accountlimit") %>' />
                                            <br />
                                            <asp:Label ID="datalimitLabel" runat="server" Text='<%# Eval("datalimit") %>' />
                                            
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>

                                   
                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select webspace, bandwidth,emails,accountlimit,datalimit from [product] where planid=3"></asp:SqlDataSource>
                                    <asp:Label runat="server"  Text="Buy This Hosting @ Just" ID="Label4" ForeColor="White"></asp:Label>
                                   

                                   <br />
                                    <asp:DataList ID="DataList15" runat="server" Font-Size="15px" DataSourceID="SqlDataSource10" Font-Bold="true" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Left" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel12" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                            <asp:Label ID="mon1" runat="server" Text="/month"></asp:Label>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=3"></asp:SqlDataSource>
                                   

                                   
                                </div>
                                
                                 <asp:Button ID="plan3b" Text="Buy Now" ToolTip="Want To Buy This Plan!! Just Click Me!" runat="server" Width="172px" BackColor="#99CC00" CssClass="handicon" OnClick="plan3b_Click"/>
                            </td>
                            <td class="style16">
                                <div style="width:172px; height:347px;  background-image: url('css/images/p4.png'); text-align: center;">                                   
                                    <asp:DataList ID="DataList16" runat="server" DataSourceID="SqlDataSource11" Font-Bold="True" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="15px" RepeatLayout="Flow">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="PLANLabel" runat="server" Text='<%# Eval("PLAN") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PLAN] FROM [product] WHERE ([planid] = 4)">
                                        
                                    </asp:SqlDataSource>
                                    <br />
                                   
                                   <br />
                                   <%-- <asp:DataList ID="DataList17" runat="server" DataSourceID="SqlDataSource12" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="True" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Height="20px" Font-Names="Times New Roman">
                                        <ItemTemplate>
                                            $
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        <asp:Label ID="pricelable1" runat="server" Text="/Month" Font-Size="Medium"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="Data Source=;Initial Catalog=;Persist Security Info=True;User ID=;Password=" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [product] where planid=4"></asp:SqlDataSource>--%>
                                   
                                    
                                   
                                    <asp:DataList ID="DataList18" runat="server" DataSourceID="SqlDataSource13" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="20px" RepeatLayout="Flow" Width="172px">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel" Font-Size="60px" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                           <br /> <asp:Label ID="final_pricelabel1" runat="server" Font-Size="Large" Text="Per Month"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=4"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                   <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="BEST FOR ALL"  Font-Italic="True" Font-Size="13px" ForeColor="#999999"></asp:Label>
                                    <hr style="width:150px; margin-left:8px;"/>
                                   
                                    <asp:DataList ID="DataList19" runat="server" Font-Size="12px"  DataSourceID="SqlDataSource14" Font-Bold="true" ForeColor="#999999" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="webspaceLabel" runat="server" Text='<%# Eval("webspace") %>' />
                                            <br />
                                            
                                            <asp:Label ID="bandwidthLabel" runat="server" Text='<%# Eval("bandwidth") %>' />
                                            <br />
                                           
                                            <asp:Label ID="emailsLabel" runat="server" Text='<%# Eval("emails") %>' />
                                            <br />
                                            
                                            <asp:Label ID="accountlimitLabel" runat="server" Text='<%# Eval("accountlimit") %>' />
                                            <br />
                                            <asp:Label ID="datalimitLabel" runat="server" Text='<%# Eval("datalimit") %>' />
                                            
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>

                                   
                                    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select webspace, bandwidth,emails,accountlimit,datalimit from [product] where planid=4"></asp:SqlDataSource>
                                    <asp:Label runat="server"  Text="Buy This Hosting @ Just" ID="Label6" ForeColor="White"></asp:Label>
                                   

                                   <br />
                                    <asp:DataList ID="DataList20" runat="server" Font-Size="15px" DataSourceID="SqlDataSource15" Font-Bold="true" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Left" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel12" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                            <asp:Label ID="mon1" runat="server" Text="/month"></asp:Label>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=4"></asp:SqlDataSource>
                                   

                                   
                                </div>
                               
                                 <asp:Button ID="plan4b" CssClass="handicon" Text="Buy Now" ToolTip="Want To Buy This Plan!! Just Click Me!" runat="server" Width="175px" BackColor="#999999" OnClick="plan4b_Click"/>
                            </td>
                            <td class="style16">
                                <div style="width:172px; height:347px;  background-image: url('css/images/p5.png'); text-align: center;">                                   
                                    <asp:DataList ID="DataList21" runat="server" DataSourceID="SqlDataSource16" Font-Bold="True" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="15px" RepeatLayout="Flow">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="PLANLabel" runat="server" Text='<%# Eval("PLAN") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PLAN] FROM [product] WHERE ([planid] = 5)">
                                        
                                    </asp:SqlDataSource>
                                    <br />
                                   
                                   
                                   <%-- <asp:DataList ID="DataList22" runat="server" DataSourceID="SqlDataSource17" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="True" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" Height="20px" Font-Names="Times New Roman">
                                        <ItemTemplate>
                                            $
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        <asp:Label ID="pricelable1" runat="server" Text="/Month" Font-Size="Medium"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="Data Source=;Initial Catalog=;Persist Security Info=True;" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [product] where planid=5"></asp:SqlDataSource>--%>
                                   <br />
                                    
                                   
                                    <asp:DataList ID="DataList23" runat="server" DataSourceID="SqlDataSource18" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" Height="20px" RepeatLayout="Flow" Width="172px">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="final_priceLabel" Font-Size="60px" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                           <br /> <asp:Label ID="final_pricelabel1" runat="server" Font-Size="Large" Text="Per Month"></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=5"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                   <br />
                                    <br />
                                    <asp:Label ID="Label87" runat="server" Text="BEST FOR HIGH TRAFFIC PORTALS"  Font-Italic="True" Font-Size="10px" ForeColor="#C49C00"></asp:Label>
                                    <hr style="width:150px; margin-left:8px;"/>
                                   
                                    <asp:DataList ID="DataList24" runat="server" Font-Size="12px"  DataSourceID="SqlDataSource19" Font-Bold="true" ForeColor="#C49C00" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                            
                                            <asp:Label ID="webspaceLabel24" runat="server" Text='<%# Eval("webspace") %>' />
                                            <br />
                                            
                                            <asp:Label ID="bandwidthLabel24" runat="server" Text='<%# Eval("bandwidth") %>' />
                                            <br />
                                           
                                            <asp:Label ID="emailsLabel24" runat="server" Text='<%# Eval("emails") %>' />
                                            <br />
                                            
                                            <asp:Label ID="accountlimitLabel24" runat="server" Text='<%# Eval("accountlimit") %>' />
                                            <br />
                                            <asp:Label ID="datalimitLabel24" runat="server" Text='<%# Eval("datalimit") %>' />
                                            
                                           
                                        </ItemTemplate>
                                    </asp:DataList>

                                   
                                    <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select webspace, bandwidth,emails,accountlimit,datalimit from [product] where planid=5"></asp:SqlDataSource>
                                    <br />
                                    <asp:Label runat="server" CssClass="spacesplan"  Text="Buy This Hosting @ Just" ID="Label8" ForeColor="White"></asp:Label>
                                   

                                   <br />
                                    <asp:DataList ID="DataList25"  runat="server" Font-Size="15px" DataSourceID="SqlDataSource20" Font-Bold="true" Font-Italic="False" Font-Names="Ebrima" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Left" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="final_priceLabel25" runat="server" Text='<%# "$" + Eval("final_price") %>' />
                                            <asp:Label ID="mon25" runat="server" Text="/month"></asp:Label>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="Data Source=184.168.47.19;Initial Catalog=hostingdb;Persist Security Info=True;User ID=hostingdb;Password=#iR62indi" ProviderName="System.Data.SqlClient" SelectCommand="select (CAST(price AS float)-CAST(discount AS float))as final_price  from product where planid=5"></asp:SqlDataSource>
                                   

                                   
                                </div>
                                <asp:Button ID="plan5b" CssClass="handicon" Text="Buy Now" ToolTip="Want To Buy This Plan!! Just Click Me!" runat="server" Width="175px" BackColor="#C49C00" OnClick="plan5b_Click"/>
                            </td>
                        </tr>
                        </table>
                    </div>
                    </section>                
                   

                    <!--welcome part-->
                    <section>
                    <br />
                    <h2><asp:Label ID="welcome" runat="server" Text="Welcome to Hosting.com "></asp:Label></h2><br />
                    <p><asp:Label runat="server" ID="welcomep1" Text="Hosting.com is one of the leading web hosting Company in India which provides excellent web hosting plans at affordable prices. Start Your own business with our Web Hosting packages which offers you all the facilities as per your requirement."></asp:Label></p>
                    <p><asp:Label runat="server" ID="welcome2" Text="Hosting.com offers 99.9% uptime guarantee with NO hidden fee, NO setup fee and NO Extra Payments. Besides, it is ahead of its competitors in terms of plans and pricing as it has 5 plans . This lets customers choose what they want most. You also get benefit from Tier-4 Data-center with cutting edge technology along with free Site Builder website building too.It is our guarantee that we offer the best price for web hosting and domain name in India. It will be hard to find the cheaper hosting provider in the market like us."></asp:Label>
                    </p>
                    <br />
                    <p><asp:Label runat="server" ID="welcome3" Text="Our Web Hositng platform powers more than 10000 websites all over India, making us one of the most reliable web hosts in India. Here you will get Affordable Web Hosting for any kind of websites like personal websites, Business Hosting for small business websites, and Professional Hosting for large enterprises.We also provide custom hosting packages for clients who are looking for additional resources and have excellent technical support team who provides 24/7 support in 12 regional languages."></asp:Label></p>
                    </section>
                    
                    

					<section class="testimonial">
						<h2 align="center" style="color:blueviolet"><asp:Label runat="server" Text="Our Clients"></asp:Label></h2> <asp:ImageButton OnClick="clientimage_Click" ID="clientimage" ImageUrl="~/css/images/clients.PNG" runat="server"></asp:ImageButton>
                      
					</section>
</div>
</asp:Content>
