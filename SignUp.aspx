<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Sorry This User Name Or Email Id Used Before<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <div id="contact" class="clear">
                <div style="margin-bottom: 5px">
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- Chips Seller Main Page -->
                    <ins class="adsbygoogle"
                        style="display: block"
                        data-ad-client="ca-pub-1373088425496976"
                        data-ad-slot="3203355847"
                        data-ad-format="auto"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
                <div class="one_half first">
                    <p>
                        Already Signed Up <a href="Login.aspx">Login</a>
                    </p>
                    <br />
                    <div id="respond">
                        <h2>Sing Up</h2>

                        <div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <table>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                User Name
                                            </td>
                                            <td>&nbsp;<br />
                                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                                    ErrorMessage="Please Enter Your Name" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                Phone Number
                                            </td>
                                            <td>
                                                <br />
                                                <asp:TextBox ID="txtphonenumber" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphonenumber"
                                                    ErrorMessage="Enter Your Mobile Number" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                Email Address
                                            </td>
                                            <td>
                                                <br />
                                                <asp:TextBox ID="txtmailid" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmailid"
                                                    ErrorMessage="Enter Email Id" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                                &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmailid"
                                                    ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ValidationGroup="Submit"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Country
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="True">
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                City
                                            </td>
                                            <td>
                                                <br />
                                                <div id="usainvisible" runat="server">
                                                    <asp:DropDownList ID="drpcitylist" runat="server">
                                                        <asp:ListItem Selected="selected">-Select-</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Top Metropolitan Cities-</asp:ListItem>
                                                        <asp:ListItem>Ahmedabad</asp:ListItem>
                                                        <asp:ListItem>Bengaluru/Bangalore</asp:ListItem>
                                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                                        <asp:ListItem>Chennai</asp:ListItem>
                                                        <asp:ListItem>Delhi</asp:ListItem>
                                                        <asp:ListItem>Gurgaon</asp:ListItem>
                                                        <asp:ListItem>Hyderabad/Secunderabad</asp:ListItem>
                                                        <asp:ListItem>Kolkatta</asp:ListItem>
                                                        <asp:ListItem>Mumbai</asp:ListItem>
                                                        <asp:ListItem>Noida</asp:ListItem>
                                                        <asp:ListItem>Pune</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Andhra Pradesh-</asp:ListItem>
                                                        <asp:ListItem>Anantapur</asp:ListItem>
                                                        <asp:ListItem>Guntakal</asp:ListItem>
                                                        <asp:ListItem>Guntur</asp:ListItem>
                                                        <asp:ListItem>Hyderabad/Secunderabad</asp:ListItem>
                                                        <asp:ListItem>kakinada</asp:ListItem>
                                                        <asp:ListItem>kurnool</asp:ListItem>
                                                        <asp:ListItem>Nellore</asp:ListItem>
                                                        <asp:ListItem>Nizamabad</asp:ListItem>
                                                        <asp:ListItem>Rajahmundry</asp:ListItem>
                                                        <asp:ListItem>Tirupati</asp:ListItem>
                                                        <asp:ListItem>Vijayawada</asp:ListItem>
                                                        <asp:ListItem>Visakhapatnam</asp:ListItem>
                                                        <asp:ListItem>Warangal</asp:ListItem>
                                                        <asp:ListItem>Andra Pradesh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Arunachal Pradesh-</asp:ListItem>
                                                        <asp:ListItem>Itanagar</asp:ListItem>
                                                        <asp:ListItem>Arunachal Pradesh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Assam-</asp:ListItem>
                                                        <asp:ListItem>Guwahati</asp:ListItem>
                                                        <asp:ListItem>Silchar</asp:ListItem>
                                                        <asp:ListItem>Assam-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Bihar-</asp:ListItem>
                                                        <asp:ListItem>Bhagalpur</asp:ListItem>
                                                        <asp:ListItem>Patna</asp:ListItem>
                                                        <asp:ListItem>Bihar-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Chhattisgarh-</asp:ListItem>
                                                        <asp:ListItem>Bhillai</asp:ListItem>
                                                        <asp:ListItem>Bilaspur</asp:ListItem>
                                                        <asp:ListItem>Raipur</asp:ListItem>
                                                        <asp:ListItem>Chhattisgarh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Goa-</asp:ListItem>
                                                        <asp:ListItem>Panjim/Panaji</asp:ListItem>
                                                        <asp:ListItem>Vasco Da Gama</asp:ListItem>
                                                        <asp:ListItem>Goa-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Gujarat-</asp:ListItem>
                                                        <asp:ListItem>Ahmedabad</asp:ListItem>
                                                        <asp:ListItem>Anand</asp:ListItem>
                                                        <asp:ListItem>Ankleshwar</asp:ListItem>
                                                        <asp:ListItem>Bharuch</asp:ListItem>
                                                        <asp:ListItem>Bhavnagar</asp:ListItem>
                                                        <asp:ListItem>Bhuj</asp:ListItem>
                                                        <asp:ListItem>Gandhinagar</asp:ListItem>
                                                        <asp:ListItem>Gir</asp:ListItem>
                                                        <asp:ListItem>Jamnagar</asp:ListItem>
                                                        <asp:ListItem>Kandla</asp:ListItem>
                                                        <asp:ListItem>Porbandar</asp:ListItem>
                                                        <asp:ListItem>Rajkot</asp:ListItem>
                                                        <asp:ListItem>Surat</asp:ListItem>
                                                        <asp:ListItem>Vadodara/Baroda</asp:ListItem>
                                                        <asp:ListItem>Valsad</asp:ListItem>
                                                        <asp:ListItem>Vapi</asp:ListItem>
                                                        <asp:ListItem>Gujarat-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Haryana-</asp:ListItem>
                                                        <asp:ListItem>Ambala</asp:ListItem>
                                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                                        <asp:ListItem>Faridabad</asp:ListItem>
                                                        <asp:ListItem>Gurgaon</asp:ListItem>
                                                        <asp:ListItem>Hisar</asp:ListItem>
                                                        <asp:ListItem>Karnal</asp:ListItem>
                                                        <asp:ListItem>Kurukshetra</asp:ListItem>
                                                        <asp:ListItem>Panipat</asp:ListItem>
                                                        <asp:ListItem>Rohtak</asp:ListItem>
                                                        <asp:ListItem>Haryana-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Himachal Pradesh-</asp:ListItem>
                                                        <asp:ListItem>Dalhousie</asp:ListItem>
                                                        <asp:ListItem>Dharmasala</asp:ListItem>
                                                        <asp:ListItem>Kulu/Manali</asp:ListItem>
                                                        <asp:ListItem>Shimla</asp:ListItem>
                                                        <asp:ListItem>Himachal Pradesh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Jammu and Kashmir-</asp:ListItem>
                                                        <asp:ListItem>Jammu</asp:ListItem>
                                                        <asp:ListItem>Srinagar</asp:ListItem>
                                                        <asp:ListItem>Jammu and Kashmir-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Jharkhand-</asp:ListItem>
                                                        <asp:ListItem>Bokaro</asp:ListItem>
                                                        <asp:ListItem>Dhanbad</asp:ListItem>
                                                        <asp:ListItem>Jamshedpur</asp:ListItem>
                                                        <asp:ListItem>Ranchi</asp:ListItem>
                                                        <asp:ListItem>Jharkhand-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Karnataka-</asp:ListItem>
                                                        <asp:ListItem>Bengaluru/Bangalore</asp:ListItem>
                                                        <asp:ListItem>Belgaum</asp:ListItem>
                                                        <asp:ListItem>Bellary</asp:ListItem>
                                                        <asp:ListItem>Bidar</asp:ListItem>
                                                        <asp:ListItem>Dharwad</asp:ListItem>
                                                        <asp:ListItem>Gulbarga</asp:ListItem>
                                                        <asp:ListItem>Hubli</asp:ListItem>
                                                        <asp:ListItem>Kolar</asp:ListItem>
                                                        <asp:ListItem>Mangalore</asp:ListItem>
                                                        <asp:ListItem>Mysoru/Mysore</asp:ListItem>
                                                        <asp:ListItem>Karnataka-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Kerala-</asp:ListItem>
                                                        <asp:ListItem>Calicut</asp:ListItem>
                                                        <asp:ListItem>Cochin</asp:ListItem>
                                                        <asp:ListItem>Ernakulam</asp:ListItem>
                                                        <asp:ListItem>Kannur</asp:ListItem>
                                                        <asp:ListItem>Kochi</asp:ListItem>
                                                        <asp:ListItem>Kollam</asp:ListItem>
                                                        <asp:ListItem>Kottayam</asp:ListItem>
                                                        <asp:ListItem>Kozhikode</asp:ListItem>
                                                        <asp:ListItem>Palakkad</asp:ListItem>
                                                        <asp:ListItem>Palghat</asp:ListItem>
                                                        <asp:ListItem>Thrissur</asp:ListItem>
                                                        <asp:ListItem>Trivandrum</asp:ListItem>
                                                        <asp:ListItem>Kerela-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Madhya Pradesh-</asp:ListItem>
                                                        <asp:ListItem>Bhopal</asp:ListItem>
                                                        <asp:ListItem>Gwalior</asp:ListItem>
                                                        <asp:ListItem>Indore</asp:ListItem>
                                                        <asp:ListItem>Jabalpur</asp:ListItem>
                                                        <asp:ListItem>Ujjain</asp:ListItem>
                                                        <asp:ListItem>Madhya Pradesh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Maharashtra-</asp:ListItem>
                                                        <asp:ListItem>Ahmednagar</asp:ListItem>
                                                        <asp:ListItem>Aurangabad</asp:ListItem>
                                                        <asp:ListItem>Jalgaon</asp:ListItem>
                                                        <asp:ListItem>Kolhapur</asp:ListItem>
                                                        <asp:ListItem>Mumbai</asp:ListItem>
                                                        <asp:ListItem>Mumbai Suburbs</asp:ListItem>
                                                        <asp:ListItem>Nagpur</asp:ListItem>
                                                        <asp:ListItem>Nasik</asp:ListItem>
                                                        <asp:ListItem>Navi Mumbai</asp:ListItem>
                                                        <asp:ListItem>Pune</asp:ListItem>
                                                        <asp:ListItem>Solapur</asp:ListItem>
                                                        <asp:ListItem>Maharashtra-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Manipur-</asp:ListItem>
                                                        <asp:ListItem>Imphal</asp:ListItem>
                                                        <asp:ListItem>Manipur-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Meghalaya-</asp:ListItem>
                                                        <asp:ListItem>Shillong</asp:ListItem>
                                                        <asp:ListItem>Meghalaya-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Mizoram-</asp:ListItem>
                                                        <asp:ListItem>Aizawal</asp:ListItem>
                                                        <asp:ListItem>Mizoram-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Nagaland-</asp:ListItem>
                                                        <asp:ListItem>Dimapur</asp:ListItem>
                                                        <asp:ListItem>Nagaland-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Orissa-</asp:ListItem>
                                                        <asp:ListItem>Bhubaneshwar</asp:ListItem>
                                                        <asp:ListItem>Cuttak</asp:ListItem>
                                                        <asp:ListItem>Paradeep</asp:ListItem>
                                                        <asp:ListItem>Puri</asp:ListItem>
                                                        <asp:ListItem>Rourkela</asp:ListItem>
                                                        <asp:ListItem>Orissa-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Punjab-</asp:ListItem>
                                                        <asp:ListItem>Amritsar</asp:ListItem>
                                                        <asp:ListItem>Bathinda</asp:ListItem>
                                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                                        <asp:ListItem>Jalandhar</asp:ListItem>
                                                        <asp:ListItem>Ludhiana</asp:ListItem>
                                                        <asp:ListItem>Mohali</asp:ListItem>
                                                        <asp:ListItem>Pathankot</asp:ListItem>
                                                        <asp:ListItem>Patiala</asp:ListItem>
                                                        <asp:ListItem>Punjab-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Rajasthan-</asp:ListItem>
                                                        <asp:ListItem>Ajmer</asp:ListItem>
                                                        <asp:ListItem>Jaipur</asp:ListItem>
                                                        <asp:ListItem>Jaisalmer</asp:ListItem>
                                                        <asp:ListItem>Jodhpur</asp:ListItem>
                                                        <asp:ListItem>Kota</asp:ListItem>
                                                        <asp:ListItem>Udaipur</asp:ListItem>
                                                        <asp:ListItem>Rajasthan-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Sikkim-</asp:ListItem>
                                                        <asp:ListItem>Gangtok</asp:ListItem>
                                                        <asp:ListItem>Sikkim-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Tamil Nadu-</asp:ListItem>
                                                        <asp:ListItem>Chennai</asp:ListItem>
                                                        <asp:ListItem>Coimbatore</asp:ListItem>
                                                        <asp:ListItem>Cuddalore</asp:ListItem>
                                                        <asp:ListItem>Erode</asp:ListItem>
                                                        <asp:ListItem>Hosur</asp:ListItem>
                                                        <asp:ListItem>Madurai</asp:ListItem>
                                                        <asp:ListItem>Nagerkoil</asp:ListItem>
                                                        <asp:ListItem>Ooty</asp:ListItem>
                                                        <asp:ListItem>Salem</asp:ListItem>
                                                        <asp:ListItem>Thanjavur</asp:ListItem>
                                                        <asp:ListItem>Tirunalveli</asp:ListItem>
                                                        <asp:ListItem>Trichy</asp:ListItem>
                                                        <asp:ListItem>Tuticorin</asp:ListItem>
                                                        <asp:ListItem>Vellore</asp:ListItem>
                                                        <asp:ListItem>Tamil Nadu-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Tripura-</asp:ListItem>
                                                        <asp:ListItem>Agartala</asp:ListItem>
                                                        <asp:ListItem>Tripura-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Union Territories-</asp:ListItem>
                                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                                        <asp:ListItem>Dadra & Nagar Haveli-Silvassa</asp:ListItem>
                                                        <asp:ListItem>Daman & Diu</asp:ListItem>
                                                        <asp:ListItem>Delhi</asp:ListItem>
                                                        <asp:ListItem>Pondichery</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Uttar Pradesh-</asp:ListItem>
                                                        <asp:ListItem>Agra</asp:ListItem>
                                                        <asp:ListItem>Aligarh</asp:ListItem>
                                                        <asp:ListItem>Allahabad</asp:ListItem>
                                                        <asp:ListItem>Bareilly</asp:ListItem>
                                                        <asp:ListItem>Faizabad</asp:ListItem>
                                                        <asp:ListItem>Ghaziabad</asp:ListItem>
                                                        <asp:ListItem>Gorakhpur</asp:ListItem>
                                                        <asp:ListItem>Kanpur</asp:ListItem>
                                                        <asp:ListItem>Lucknow</asp:ListItem>
                                                        <asp:ListItem>Mathura</asp:ListItem>
                                                        <asp:ListItem>Meerut</asp:ListItem>
                                                        <asp:ListItem>Moradabad</asp:ListItem>
                                                        <asp:ListItem>Noida</asp:ListItem>
                                                        <asp:ListItem>Varanasi/Banaras</asp:ListItem>
                                                        <asp:ListItem>Uttar Pradesh-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Uttaranchal-</asp:ListItem>
                                                        <asp:ListItem>Dehradun</asp:ListItem>
                                                        <asp:ListItem>Roorkee</asp:ListItem>
                                                        <asp:ListItem>Uttaranchal-Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-West Bengal-</asp:ListItem>
                                                        <asp:ListItem>Asansol</asp:ListItem>
                                                        <asp:ListItem>Durgapur</asp:ListItem>
                                                        <asp:ListItem>Haldia</asp:ListItem>
                                                        <asp:ListItem>Kharagpur</asp:ListItem>
                                                        <asp:ListItem>Kolkatta</asp:ListItem>
                                                        <asp:ListItem>Siliguri</asp:ListItem>
                                                        <asp:ListItem>West Bengal - Other</asp:ListItem>
                                                        <asp:ListItem disabled="disabled">-Other-</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div id="usavisible" runat="server">
                                                    <asp:TextBox ID="txtusa" runat="server"></asp:TextBox>
                                                </div>
                                                &nbsp;
                                                <asp:Label ID="lblcity" runat="server" ForeColor="Red" Text="Please Select Your City"
                                                    Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                Password
                                            </td>
                                            <td>
                                                <br />
                                                <asp:TextBox ID="txtSalary" Style="border: 1px solid #717171 !important;" runat="server"
                                                    TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSalary"
                                                    ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSalary"
                                                    ErrorMessage="Pasword Length Must Be More Then 4" ForeColor="Red" ValidationExpression="[\s\S]{4,20}"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px">
                                                <br />
                                                Confirm Password
                                            </td>
                                            <td>
                                                <br />
                                                <asp:TextBox ID="txtConfirmPassword" Style="border: 1px solid #717171 !important;"
                                                    runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSalary"
                                                    ControlToValidate="txtConfirmPassword" ErrorMessage="Both Password Doesnot Match"
                                                    ForeColor="Red" ValidationGroup="Submit"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 123px"></td>
                                            <td>
                                                <br />
                                                <asp:Button ID="btnSignup" runat="server" OnClick="Button1_Click" class="button small orange"
                                                    Text="Sign Up" ValidationGroup="Submit" />
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                    </div>
                </div>

                <div class="one_half second">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Post Page Responsive Side Menu -->
                            <ins class="adsbygoogle"
                                style="display: block"
                                data-ad-client="ca-pub-1373088425496976"
                                data-ad-slot="6569598241"
                                data-ad-format="auto"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <div class="clear">
            </div>
            <div style="margin-bottom: 5px">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- Chips Seller Bottom Page -->
                <ins class="adsbygoogle"
                    style="display: block"
                    data-ad-client="ca-pub-1373088425496976"
                    data-ad-slot="6156822242"
                    data-ad-format="auto"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
