<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Id.aspx.cs" Inherits="Id" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript">

        function GetHisab() {
            var result = 0;
            var inputs = document.getElementsByTagName('input')
            var txtchips = 'txtchips' //ID of textbox in repeater template            
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type == 'text') {
                    if (inputs[i].id.indexOf(txtchips) != -1) {
                        result = result + parseFloat(inputs[i].value);
                    }
                }
            }
            if (!isNaN(result)) {
                document.getElementById('txttotal').value = result;

            }
            var result1 = 14000
            if (!isNaN(result1)) {
                document.getElementById('txtdiff').value = result1;

            }
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
            <%--alert--%>
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server">
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                <a class="close" href="javascript:void(0)">X</a> </asp:Label>
            <%--alert--%>
            <div id="contact" class="clear">
                <div>
                    <h2>Id List</h2>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div class="two_third first">
                        <asp:Repeater ID="rptHisabDetails" runat="server">
                            <HeaderTemplate>
                                <table border="0" width="100%">
                                    <tr>
                                        <th>
                                            <asp:Label ID="lblid" Visible="false" runat="server" Text="Id"></asp:Label>
                                        </th>
                                        <th>Nick Name
                                        </th>
                                        <th>Chips Count
                                        </th>
                                        <th>FB Link
                                        </th>
                                        <th>Available
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td style="width: 1%;">
                                        <asp:TextBox ID="txtid" Visible="false" TabIndex="-1" BackColor="#CCCCFF" Text='<%# Eval("Id")%>'
                                            ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:TextBox ID="txtname" Text='<%# Eval("Name")%>' BackColor="#CCCCFF" TabIndex="-1"
                                            ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:TextBox onkeyup="GetHisab()" ID="txtchips" Text='<%# Eval("Chips")%>' runat="server"></asp:TextBox>
                                    </td>

                                    <td style="width: 39%;">
                                        <a href='/<%# Eval("FbLink")%>'>
                                            <img src="Images/fblink.png" style="border-width: 0px; width: 160px; height: 27px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;" />
                                        </a>
                                        <%-- <asp:ImageButton ID="imgbtnfblink" style="border-width:0px;width: 160px;height: 27px;padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"
                                         ImageUrl="Images/fblink.png" OnClick='<%# Eval("FbLink")%>' runat="server"></asp:ImageButton>--%>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:CheckBox ID="CheckBox1" Checked='<%# Eval("Status")%>' runat="server" />
                                    </td>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <table>
                            <tr>
                                <td style="width: 22%">
                                    <asp:Label ID="lbltotal" Style="float: right" runat="server" Text="Total -"></asp:Label>
                                </td>
                                <td style="width: 33%">
                                    <asp:TextBox onkeyup="GetHisab()" ID="txttotal" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 33%"></td>
                            </tr>
                        </table>
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
                    <div class="one_third">
                    </div>

                </div>

            </div>
        </div>

        <!-- ################################################################################################ -->

        <div class="clear">
        </div>
    </div>

</asp:Content>
