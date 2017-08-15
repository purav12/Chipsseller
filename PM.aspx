<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="PM.aspx.cs" Inherits="PM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>Edit Text
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txttext" runat="server" TextMode="MultiLine" Style="height: 300px" Width="75%"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Width" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Update" class="button small orange"
                                    OnClick="Button2_Click" />
                                <asp:Button ID="Button1" Visible="false" runat="server" Text="Delete" class="button small orange"
                                    OnClick="Button1_Click" />
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

