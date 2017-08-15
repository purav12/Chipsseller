<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="forgot.aspx.cs" Inherits="forgot" %>

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
            <div id="contact" class="clear">
                <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Your Pasword Sended To Your Email Adress Sortly<a class="close" href="javascript:void(0)">X</a></asp:Label>
                <asp:Label ID="lblalert1" class="alert-msg warning" runat="server" Text="Label">UserName Or Email Is Incorrect<a class="close" href="javascript:void(0)">X</a></asp:Label>
                <table width="100%">
                    <tr>
                        <td align="right" width="30%">Email Or UserName
                        </td>
                        <td width="70%">
                            <asp:TextBox ID="txtcheck" runat="server" Width="50%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnforgot" runat="server" Text="Submit" class="button small orange"
                                OnClick="btnforgot_Click" />
                        </td>
                    </tr>
                </table>
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
