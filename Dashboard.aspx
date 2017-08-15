<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>DashBoard
                </h2>
                <div id="Width" runat="server">
                    <h2>Last 24 hours
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="grdlast24" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>Last 7 days
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>This Month
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>Last Month
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView3" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>Quarterly
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView4" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>This Year
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView5" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                    <h2>Last Year
                    </h2>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView6" runat="server">
                                </asp:GridView>
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
    </div>
</asp:Content>

