<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="AdminBank.aspx.cs" Inherits="AdminBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function textboxFinder() {

            var result = 0;
            var inputs = document.getElementsByTagName('input')
            var txtId = 'txtBalance' //ID of textbox in repeater template
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type == 'text') {
                    if (inputs[i].id.indexOf(txtId) != -1) {
                        result = result + parseFloat(inputs[i].value);
                    }
                }
            }
            if (!isNaN(result)) {
                document.getElementById('txtTotalBalance').value = result;

            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div id="contact" class="clear">
                <div>
                    <asp:HyperLink ID="HyperLink1" href="http://chipsseller.com/AdminUser.aspx" runat="server">Back</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <div id="respond">
                        <h2>Hisab</h2>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <div class="portfolio">
                            <asp:Repeater ID="rptBankDetails" runat="server">
                                <HeaderTemplate>
                                    <table border="0" width="100%">
                                        <tr>
                                            <th>Bank Name
                                            </th>
                                            <th>Balance
                                            </th>
                                            <th>Note
                                            </th>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td style="width: 20%;">
                                            <asp:Label ID="lblname" Text='<%# Eval("Name")%>' runat="server"></asp:Label>
                                        </td>
                                        <td style="width: 20%;">
                                            <asp:TextBox Style="width: 75px" onkeyup="textboxFinder()" ID="txtBalance" Text='<%# Eval("Balance")%>'
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:TextBox Style="width: 100%" ID="txtNote" Text='<%# Eval("Note")%>' runat="server"></asp:TextBox>
                                        </td>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                            <br />
                            <table>
                                <tr>
                                    <td style="width: 20%;">
                                        <asp:Label ID="lblname" Text="Total Amount" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="width: 100px" BackColor="#CCCCFF" ID="txtTotalBalance" ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;"></td>
                                    <td>
                                        <asp:Button ID="btnsubmit" class="button small orange" runat="server" Text="Update"
                                            OnClick="btnsubmit_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div>
                        </div>
                        <p>
                        </p>
                        <br />
                        <br />
                        <br />
                    </div>
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
