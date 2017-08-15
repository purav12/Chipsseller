<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DBBackup.aspx.cs" Inherits="DBBackup" %>

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
            <asp:HyperLink ID="HyperLink1" href="http://chipsseller.com" runat="server">Back</asp:HyperLink>
            <br />
            <asp:Label ID="lblerror" runat="server"></asp:Label>
            <br />
            <br />
            <div class="clear push50">
                <h2>Backup Database
                    <asp:TextBox ID="TextBox1" runat="server" Width="669px"></asp:TextBox>
                </h2>

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Backup" OnClick="Button1_Click" />
                <br />
                <br />
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

