<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true"
    CodeFile="Profile.aspx.cs" Inherits="UserIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="layout/styles/main.css" rel="stylesheet" type="text/css" />
    <link href="layout/styles/mediaqueries.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
<link href="../layout/styles/ie/ie8.css" rel="stylesheet" type="text/css" media="all">
<script src="../layout/scripts/ie/css3-mediaqueries.min.js"></script>
<script src="../layout/scripts/ie/html5shiv.min.js"></script>
<![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <!-- ################################################################################################ -->
            <div class="clear push50">
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
                <div class="clear">
                    <p>
                        <h2>
                            <asp:Label ID="lblwelcome" runat="server" Text="Label"></asp:Label>
                        </h2>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_Url") %>' />
                            </ItemTemplate>
                        </asp:DataList>
                    </p>
                    <!-- ################################################################################################ -->
                    <div class="tab-wrapper clear tab-opt2">
                        <div class="one_quarter first">
                            <ul class="tab-nav clear">
                                <li><a href="#tab-11">Mssages</a></li>
                                <%--<li><a href="#tab-12">Limit Details</a></li>--%>
                            </ul>
                        </div>
                        <div class="tab-container three_quarter">
                            <!-- Tab Content -->
                            <!-- ## TAB 2 ## -->
                            <div id="tab-11" class="tab-content clear">
                                <h2>Messages<asp:TextBox ID="txtId" runat="server" Visible="False"></asp:TextBox>
                                    <asp:TextBox ID="txtmsgid" runat="server" Visible="False"></asp:TextBox>
                                </h2>
                                <p>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" />
                                            <asp:BoundField DataField="Message" HeaderText="Message" />
                                            <asp:CommandField ShowSelectButton="True" SelectText="View" />
                                        </Columns>
                                    </asp:GridView>
                                </p>
                                <div id="messagebox" visible="false" runat="server">
                                    <table>
                                        <tr>
                                            <td width="30%">Message From
                                            </td>
                                            <td>
                                                <asp:TextBox ID="msgfrom" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <table>
                                        <tr>
                                            <td width="100%">
                                                <asp:TextBox ID="message" Style="margin-left: 265px;" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!-- ## TAB 3 ## -->
                            <div id="tab-12" style="display: none" class="tab-content clear">
                                <h2>Limit</h2>
                                <p>
                                    <section>

                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="Remarks" HeaderText="To" />
                                                <asp:BoundField DataField="Quentity" HeaderText="Chips" />
                                                <asp:BoundField DataField="Limit" HeaderText="INR" />
                                            </Columns>
                                        </asp:GridView>
                                        <div id="limitlol" visible="false" runat="server">
                                            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">No Limit<a class="close" href="javascript:void(0)">X</a></asp:Label>
                                            <asp:Button ID="btnlimitset" runat="server" class="button small orange"
                                                Text="Add Limit" OnClick="btnlimitset_Click" />
                                        </div>
                                    </section>
                                </p>
                            </div>
                            <!-- / Tab Content -->
                        </div>
                    </div>
                    <!-- ################################################################################################ -->
                </div>
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
