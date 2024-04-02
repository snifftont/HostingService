<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="site.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding:30px 30px 30px 30px;color:black">
    <div class="cloudpageleft">
    
            

                    <h3 class="heading"><span id="ContentPlaceHolder1_Label13"><asp:Label ID="pad" runat="server" Text="Postal Address"></asp:Label> </span></h3>
                    <p class="parag">
                      <asp:Label ID="addrs" Text="128 H/2 Mohammadpur BhikaJi Cama Place" runat="server"></asp:Label>
                    </p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:58px;">City :</b><asp:label ID="cnamecu" runat="server" Text="New Delhi"></asp:label></p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:47px;">State :</b> Delhi</p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:35px;"><asp:label ID="Lnamecountry" runat="server" Text="Country :"></asp:label></b><asp:label ID="Lnamecountyr" runat="server" Text="India"></asp:label></p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:34px;"><asp:Label Text="Pincode :" runat="server" ID="Labelpc1"></asp:Label></b><asp:Label Text="110066" runat="server" ID="Labelpc2"></asp:Label></p>
                    <p class="parag" style="margin-top:-10px;">
                        <b><asp:Label Text="Telephone :" runat="server" ID="Labelt2"></asp:Label></b> &nbsp;&nbsp;&nbsp; <asp:Label Text="18001802222" runat="server" ID="Labelt1"></asp:Label></p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:58px;"><asp:Label Text="Fax :" runat="server" ID="Labelcf1" ></asp:Label></b><asp:Label Text="18001802222" runat="server" ID="Lcno"></asp:Label></p>
                    <p class="parag" style="margin-top:-10px;">
                        <b style="padding-right:50px;"> <asp:Label Text="Email :" runat="server" ID="ec"></asp:Label></b><asp:Label ID="con" runat="server" Text=" contact@pocohost.com" ></asp:Label></p>
                    <p class="parag">
                        <span id="ContentPlaceHolder1_Label12"><asp:label ID="tky" Text="Thank you for your interest in PocoHost. Please provide us with the following information and we will get back to you right away!" runat="server"></asp:label> </span>
                    </p>
                    
                    
                
            
        
        <p class="parag">

                   <asp:Label ID="Label1" runat="server" Text=" Your Name  " Font-Bold="true" ForeColor="#333"></asp:Label><span style="color:red">*</span><br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox><br />
         <asp:Label ID="Label2" runat="server" Text="First " CssClass="marglab1"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" Text="Last " CssClass="marglab"></asp:Label>


              </p>
      <p class="parag">

                   <asp:Label ID="Label4" runat="server" Text=" Your Company Name    " Font-Bold="true" ForeColor="#333"></asp:Label><br />
         <asp:TextBox ID="TextBox3" runat="server" CssClass="text" Width="305px"></asp:TextBox><br />
           <asp:Label ID="Label10" runat="server" Text="Maximum Allowed: 100 characters. " CssClass="marglab1"></asp:Label>  <asp:Label ID="Label11" runat="server" Text="  Currently Used: 0 characters. " CssClass="marglab2"></asp:Label>
          </p>
         <p class="parag">

                   <asp:Label ID="Label9" runat="server" Text=" Country Name   " Font-Bold="true" ForeColor="#333"></asp:Label><br />
         <select name="select" id="clist" runat="server" style="width:320px;">
<option value="UK">UK</option>
<option value="Albania">Albania</option>
<option value="Algeria">Algeria</option>
<option value="American Samoa">American Samoa</option>
<option value="Andorra">Andorra</option>
<option value="Angola">Angola</option>
<option value="Anguilla">Anguilla</option>
<option value="Antigua">Antigua</option>
<option value="Argentina">Argentina</option>
<option value="Armenia">Armenia</option>
<option value="Aruba">Aruba</option>
<option value="Australia">Australia</option>
<option value="Austria">Austria</option>
<option value="Azerbaijan">Azerbaijan</option>
<option value="Bahamas">Bahamas</option>
<option value="Bahrain">Bahrain</option>
<option value="Bangladesh">Bangladesh</option>
<option value="Barbados">Barbados</option>
<option value="Barbuda">Barbuda</option>
<option value="Belgium">Belgium</option>
<option value="Belize">Belize</option>
<option value="Benin">Benin</option>
<option value="Bermuda">Bermuda</option>
<option value="Bhutan">Bhutan</option>
<option value="Bolivia">Bolivia</option>
<option value="Bonaire">Bonaire</option>
<option value="Botswana">Botswana</option>
<option value="Brazil">Brazil</option>
<option value="Virgin islands">British Virgin isl.</option>
<option value="Brunei">Brunei</option>
<option value="Bulgaria">Bulgaria</option>
<option value="Burundi">Burundi</option>
<option value="Cambodia">Cambodia</option>
<option value="Cameroon">Cameroon</option>
<option value="Canada">Canada</option>
<option value="Cape Verde">Cape Verde</option>
<option value="Cayman isl">Cayman Islands</option>
<option value="Central African Rep">Central African Rep.</option>
<option value="Chad">Chad</option>
<option value="Channel isl">Channel Islands</option>
<option value="Chile">Chile</option>
<option value="China">China</option>
<option value="Colombia">Colombia</option>
<option value="Congo">Congo</option>
<option value="cook isl">Cook Islands</option>
<option value="Costa Rica">Costa Rica</option>
<option value="Croatia">Croatia</option>
<option value="Curacao">Curacao</option>
<option value="Cyprus">Cyprus</option>
<option value="Czech Republic">Czech Republic</option>
<option value="Denmark">Denmark</option>
<option value="Djibouti">Djibouti</option>
<option value="Dominica">Dominica</option>
<option value="Dominican Republic">Dominican Republic</option>
<option value="Ecuador">Ecuador</option>
<option value="Egypt">Egypt</option>
<option value="El Salvador">El Salvador</option>
<option value="Equatorial Guinea">Equatorial Guinea</option>
<option value="Eritrea">Eritrea</option>
<option value="Estonia">Estonia</option>
<option value="Ethiopia">Ethiopia</option>
<option value="Faeroe isl">Faeroe Islands</option>
<option value="Fiji">Fiji</option>
<option value="Finland">Finland</option>
<option value="France">France</option>
<option value="French Guiana">French Guiana</option>
<option value="French Polynesia">French Polynesia</option>
<option value="Gabon">Gabon</option>
<option value="Gambia">Gambia</option>
<option value="Georgia">Georgia</option>
<option value="Gemany">Germany</option>
<option value="Ghana">Ghana</option>
<option value="Gibraltar">Gibraltar</option>
<option value="GB">Great Britain</option>
<option value="Greece">Greece</option>
<option value="Greenland">Greenland</option>
<option value="Grenada">Grenada</option>
<option value="Guadeloupe">Guadeloupe</option>
<option value="Guam">Guam</option>
<option value="Guatemala">Guatemala</option>
<option value="Guinea">Guinea</option>
<option value="Guinea Bissau">Guinea Bissau</option>
<option value="Guyana">Guyana</option>
<option value="Haiti">Haiti</option>
<option value="Honduras">Honduras</option>
<option value="Hong Kong">Hong Kong</option>
<option value="Hungary">Hungary</option>
<option value="Iceland">Iceland</option>
<option value="India">India</option>
<option value="Indonesia">Indonesia</option>
<option value="Irak">Irak</option>
<option value="Iran">Iran</option>
<option value="Ireland">Ireland</option>
<option value="Northern Ireland">Ireland, Northern</option>
<option value="Israel">Israel</option>
<option value="Italy">Italy</option>
<option value="Ivory Coast">Ivory Coast</option>
<option value="Jamaica">Jamaica</option>
<option value="Japan">Japan</option>
<option value="Jordan">Jordan</option>
<option value="Kazakhstan">Kazakhstan</option>
<option value="Kenya">Kenya</option>
<option value="Kuwait">Kuwait</option>
<option value="Kyrgyzstan">Kyrgyzstan</option>
<option value="Latvia">Latvia</option>
<option value="Lebanon">Lebanon</option>
<option value="Liberia">Liberia</option>
<option value="Liechtenstein">Liechtenstein</option>
<option value="Lithuania">Lithuania</option>
<option value="Luxembourg">Luxembourg</option>
<option value="Macau">Macau</option>
<option value="Macedonia">Macedonia</option>
<option value="Madagascar">Madagascar</option>
<option value="Malawi">Malawi</option>
<option value="Malaysia">Malaysia</option>
<option value="Maldives">Maldives</option>
<option value="Mali">Mali</option>
<option value="Malta">Malta</option>
<option value="Marshall isl">Marshall Islands</option>
<option value="Martinique">Martinique</option>
<option value="Mauritania">Mauritania</option>
<option value="Mauritius">Mauritius</option>
<option value="Mexico">Mexico</option>
<option value="Micronesia">Micronesia</option>
<option value="Moldova">Moldova</option>
<option value="Monaco">Monaco</option>
<option value="Mongolia">Mongolia</option>
<option value="Montserrat">Montserrat</option>
<option value="Morocco">Morocco</option>
<option value="Mozambique">Mozambique</option>
<option value="Myanmar">Myanmar/Burma</option>
<option value="Namibia">Namibia</option>
<option value="Nepal">Nepal</option>
<option value="Netherlands">Netherlands</option>
<option value="Netherlands Antilles">Netherlands Antilles</option>
<option value="New Caledonia">New Caledonia</option>
<option value="New Zealand">New Zealand</option>
<option value="Nicaragua">Nicaragua</option>
<option value="Niger">Niger</option>
<option value="Nigeria">Nigeria</option>
<option value="Norway">Norway</option>
<option value="Oman">Oman</option>
<option value="Palau">Palau</option>
<option value="Panama">Panama</option>
<option value="Papua New Guinea">Papua New Guinea</option>
<option value="Paraguay">Paraguay</option>
<option value="Peru">Peru</option>
<option value="Philippines">Philippines</option>
<option value="Poland">Poland</option>
<option value="Portugal">Portugal</option>
<option value="Puerto Rico">Puerto Rico</option>
<option value="Qatar">Qatar</option>
<option value="Reunion">Reunion</option>
<option value="Rwanda">Rwanda</option>
<option value="Saba">Saba</option>
<option value="Saipan">Saipan</option>
<option value="Saudi Arabia">Saudi Arabia</option>
<option value="Scotland">Scotland</option>
<option value="Senegal">Senegal</option>
<option value="Seychelles">Seychelles</option>
<option value="Sierra Leone">Sierra Leone</option>
<option value="Singapore">Singapore</option>
<option value="Slovac Republic">Slovak Republic</option>
<option value="Slovenia">Slovenia</option>
<option value="South Africa">South Africa</option>
<option value="South Korea">South Korea</option>
<option value="Spain">Spain</option>
<option value="Sri Lanka">Sri Lanka</option>
<option value="Sudan">Sudan</option>
<option value="Suriname">Suriname</option>
<option value="Swaziland">Swaziland</option>
<option value="Sweden">Sweden</option>
<option value="Switzerland">Switzerland</option>
<option value="Syria">Syria</option>
<option value="Taiwan">Taiwan</option>
<option value="Tanzania">Tanzania</option>
<option value="Thailand">Thailand</option>
<option value="Togo">Togo</option>
<option value="Trinidad-Tobago">Trinidad-Tobago</option>
<option value="Tunesia">Tunisia</option>
<option value="Turkey">Turkey</option>
<option value="Turkmenistan">Turkmenistan</option>
<option value="United Arab Emirates">United Arab Emirates</option>
<option value="U.S. Virgin isl">U.S. Virgin Islands</option>
<option value="USA">U.S.A.</option>
<option value="Uganda">Uganda</option>
<option value="United Kingdom">United Kingdom</option>
<option value="Urugay">Uruguay</option>
<option value="Uzbekistan">Uzbekistan</option>
<option value="Vanuatu">Vanuatu</option>
<option value="Vatican City">Vatican City</option>
<option value="Venezuela">Venezuela</option>
<option value="Vietnam">Vietnam</option>
<option value="Wales">Wales</option>
<option value="Yemen">Yemen</option>
<option value="Zaire">Zaire</option>
<option value="Zambia">Zambia</option>
<option value="Zimbabwe">Zimbabwe</option>
</select> <br />
          </p>
     <p class="parag">

                   <asp:Label ID="Label5" runat="server" Text="Your Email  " Font-Bold="true" ForeColor="#333"></asp:Label><span style="color:red">*</span><br />
          <asp:TextBox ID="TextBox4" runat="server" CssClass="text" Width="305px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RegularExpressionValidator>
         <br />
        


              </p>
      <p class="parag">

                   <asp:Label ID="Label8" runat="server" Text=" Your Phone Number    " Font-Bold="true" ForeColor="#333"></asp:Label><br />
         <asp:TextBox ID="TextBox6" runat="server" CssClass="text" Width="305px"></asp:TextBox><br />
          </p>
     <p class="parag">

                   <asp:Label ID="Label6" runat="server" Text="Who should we direct this to?  " Font-Bold="true" ForeColor="#333"></asp:Label><span style="color:red">*</span><br />
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="text" Width="310px" Height="24px">
             <asp:ListItem>Admin</asp:ListItem>
             <asp:ListItem>HelpDesk</asp:ListItem>
             <asp:ListItem>Accounts</asp:ListItem>
                   </asp:DropDownList>
        


              </p>
     <p class="parag">

                   <asp:Label ID="Label7" runat="server" Text="Your Comments, Questions or Suggestions. Give us the details.     " Font-Bold="true" ForeColor="#333"></asp:Label><br />
         <asp:TextBox ID="TextBox5" runat="server" CssClass="text" Width="405px" Height="200px" TextMode="MultiLine"></asp:TextBox><br />
          </p>
   
     <p class="parag">

         <asp:Button  ID="Button1" runat="server" Text="Submit" Width="80px" CssClass="grey-btn" />

        


              </p>

    </div>

 
    </div>

</asp:Content>
