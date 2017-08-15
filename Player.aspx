<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true"
    CodeFile="Player.aspx.cs" Inherits="Player" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Message Sent Successfuly In 2-3 Hours<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <div id="gallery">
                <h2>Player Details</h2>
                <asp:Repeater ID="RepDetails" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <a href="Player.aspx?Id=<%#Eval("Id") %>">
                                        <img src='<%#Eval("Image_Url") %>' alt="Image Not Available"></a>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <b>User Name</b> -: &nbsp
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp&nbsp&nbsp  <b>Country</b> -: &nbsp
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("Remarks") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp <b>City</b> -: &nbsp
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Join Date</b> -: &nbsp
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("CreateDate") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <b>Your Message To
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                    </b>-: &nbsp
                                    <br />
                                    <br />
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtuser" Width="50%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnMsg" class="button small orange" OnClick="btnMsg_Click" runat="server"
                                Text="Send Message" />
                        </td>
                    </tr>
                </table>
                <h2>History</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Quentity" HeaderText="Chips(Million)" />
                        <asp:BoundField DataField="Remarks" HeaderText="Wants To" />
                        <asp:BoundField DataField="Limit" HeaderText="On INR" />
                    </Columns>
                </asp:GridView>
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
