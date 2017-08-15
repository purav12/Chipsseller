<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true"
    CodeFile="Members.aspx.cs" Inherits="Members" %>

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

            <!-- ################################################################################################ -->
            <div id="gallery">
                <section>
                    <figure>
                        <h2>Member List (Total -
                            <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>)</h2>
                        <ul class="clear">
                            <asp:Repeater ID="RepDetails" runat="server">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li class="one_quarter">
                                        <a href="Player.aspx?Id=<%#Eval("Id") %>">
                                            <img src='<%#Eval("Image_Url") %>' alt="Image Not Available"></a>
                                        <br />
                                        <a href="Player.aspx?Id=<%#Eval("Id") %>">
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                        </a>
                                        <br />
                                        Country-
                                        <asp:Label ID="Label4" Style="border-top: 1px solid #E5E4E3" runat="server" Text='<%#Eval("Remarks") %>'></asp:Label>
                                        <br />
                                        City-
                                        <asp:Label ID="Label2" Style="border-top: 1px solid #E5E4E3" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                        <br />
                                        Create Date-
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("CreateDate") %>'></asp:Label>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                </FooterTemplate>
                            </asp:Repeater>
                        </ul>
                    </figure>
                </section>
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
