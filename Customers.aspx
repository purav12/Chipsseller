<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 194px;
        }

        .style2 {
            width: 151px;
        }
    </style>
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="wrapper row3">
        <div id="container">
            <h2>Add Customer
            </h2>
            <div class="clear push50">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td class="style1">Name
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtNamecus" runat="server" ValidationGroup="Submit"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="txtNamecus" ErrorMessage="Enter Customer Name"
                                        ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">Mobile Number
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtNumber" Width="100%" runat="server"></asp:TextBox>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1">City
                                </td>
                                <td class="style2">
                                    <div id="divulta" runat="server">
                                        <asp:DropDownList ID="drpcitylist" runat="server" AutoPostBack="True">
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
                                </td>
                                <td>
                                    <div id="Commondoit" runat="server">
                                        Country/City Format
                                        <asp:TextBox ID="txtcountry" runat="server" Width="50%"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">P
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtP" Width="100%" ReadOnly="True" runat="server">1</asp:TextBox>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1">Active
                                </td>
                                <td class="style2">
                                    <asp:DropDownList ID="drpactivestatus" runat="server" AutoPostBack="True">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1"></td>
                                <td class="style2">
                                    <asp:Button ID="btnAdd" class="button small orange" runat="server" Text="ADD"
                                        OnClick="btnAdd_Click" ValidationGroup="Submit" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <h2>Sort By
                </h2>
                <br />
                <table>
                    <tr>
                        <td class="style1">
                            <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:Button ID="btnSearch" class="button small orange" runat="server" Text="Search"
                                OnClick="btnSearch_Click" ValidationGroup="NO" />
                        </td>
                        <td>Total =
                            <asp:Label ID="lblcount" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <h1>Active
                </h1>
                <asp:GridView ID="grdDaily" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                    GridLines="None" PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt" OnRowCommand="grdDaily_RowCommand" OnRowDataBound="gvDetails_RowDataBound">
                    <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile Number" />
                        <asp:BoundField DataField="Details" HeaderText="Details" />
                        <asp:BoundField DataField="Refrence" HeaderText="Active" />
                        <asp:TemplateField HeaderText="Last Status">
                            <ItemTemplate>
                                <asp:Literal ID="ltrstatus" runat="server"></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:HiddenField ID="hdnStatusid" Value='<%# Eval("Id") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="P" HeaderText="P" />
                        <asp:BoundField DataField="Remarks" HeaderText="Country" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>

                    <PagerStyle CssClass="pgr"></PagerStyle>
                </asp:GridView>
                <br />
                <h1>Not Active
                </h1>
                <asp:GridView ID="grdDaily1" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                    GridLines="None" PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt" OnRowCommand="grdDaily1_RowCommand">
                    <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile Number" />
                        <asp:BoundField DataField="Details" HeaderText="Details" />
                        <asp:BoundField DataField="Refrence" HeaderText="Active" />
                        <asp:BoundField DataField="Details" HeaderText="Details" />
                        <asp:BoundField DataField="P" HeaderText="P" />
                        <asp:BoundField DataField="Remarks" HeaderText="Country" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>

                    <PagerStyle CssClass="pgr"></PagerStyle>
                </asp:GridView>
            </div>
            <div style="width: 330px" id="Width" runat="server">
                <table>
                    <tr>
                        <td>Id
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Refrence</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Details</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>P</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Remarks</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Insert" class="button small orange"
                                OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Update" class="button small orange"
                                OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" Text="Delete" class="button small orange"
                                OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
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
        </div>
    </div>
</asp:Content>
