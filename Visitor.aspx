<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Visitor.aspx.cs" Inherits="Visitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Get geo information -->
    <script type="text/javascript" src="http://geoiplookup.wikimedia.org/">
    </script>
    <!-- JavaScript object-to-JSON -->
    <!-- Don't actually hotlink this; host it yourself -->
    <script type="text/javascript" src="https://github.com/douglascrockford/JSON-js/blob/master/json2.js">
    </script>

    <script type="text/javascript">
        function MyFunction() {
            document.getElementById('<%= Button1.ClientID %>').click();
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">

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
            <!-- ################################################################################################ -->
            <div class="clear push50">
                <h2>Your Details Sended To Admin
                </h2>
                <!-- ################################################################################################ -->
                <table style="width: 100%; margin-bottom: -70px; display: none;" id="trdetails">
                    <tr>
                        <td>Your Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <h3>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                    ErrorMessage="Enter Name" ForeColor="#CC0000" ValidationGroup="Submit"></asp:RequiredFieldValidator>--%>
                            </h3>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" class="button small orange" Text="Submit"
                                OnClick="Button1_Click" ValidationGroup="Submit" />
                        </td>
                        <td></td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%; margin-bottom: -70px;" runat="server" id="trseen">
                    <tr style="display: none">
                        <td>Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtpname" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                    <tr>
                        <td>Your City
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                    <tr>
                        <td>Your IP
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                    <tr>
                        <td>Your Country
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                    <tr>
                        <td>Your Position X
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                    <tr>
                        <td>Your Position Y
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>

                        <td></td>
                    </tr>
                </table>
                <!-- ################################################################################################ -->
            </div>
            <div class="clear"></div>
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
            <div class="clear"></div>
        </div>
        <!-- Hidden field to hold result -->
        <asp:HiddenField ID="hdnGeo" runat="server"></asp:HiddenField>
        <script type="text/javascript">
            document.getElementById('<%= hdnGeo.ClientID %>').value =
        JSON.stringify(Geo);
        </script>
    </div>
</asp:Content>
