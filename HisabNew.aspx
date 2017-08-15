<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="HisabNew.aspx.cs" Inherits="HisabNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function GetHisab() {
            var result = 0;
            var inputs = document.getElementsByTagName('input')
            var txtchips = 'txtchips' //ID of textbox in repeater template
            var txtonsitechips = document.getElementById('txtonsitechips').value;
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
            var result1 = parseInt(txtonsitechips) - result;
            if (!isNaN(result1)) {
                document.getElementById('txtdiff').value = result1;

            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <%--alert--%>
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server">
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                <a class="close" href="javascript:void(0)">X</a> </asp:Label>
            <%--alert--%>
            <div id="contact" class="clear">
                <div>
                    <h2>Hisab</h2>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div class="two_third first">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtcode" Type="Password" Text="" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="btnget" class="button small orange" runat="server" Text="Get Password"
                                        OnClick="btnget_Click" />
                                    <asp:Button ID="btnsubmit" class="button small orange" runat="server" Text="Submit"
                                        OnClick="btnsubmit_Click" />
                                </td>
                            </tr>
                        </table>
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
                                        <th>User Name
                                        </th>
                                        <th>
                                            <asp:Label ID="lblpass" Visible="false" runat="server" Text="Password"></asp:Label>
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td style="width: 1%;">
                                        <asp:TextBox ID="txtid" Visible="false" TabIndex="-1" BackColor="#CCCCFF" Text='<%# Eval("Id")%>' ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:TextBox ID="txtname" Text='<%# Eval("Name")%>' BackColor="#CCCCFF" TabIndex="-1" ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:TextBox onkeyup="GetHisab()" ID="txtchips" Text='<%# Eval("Chips")%>' runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%;">
                                        <asp:TextBox ID="txtuname" Text='<%# Eval("UserName")%>' BackColor="#CCCCFF" TabIndex="-1" ReadOnly="true" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 39%;">
                                        <asp:TextBox Visible="false" ID="txtpass" TabIndex="-1" BackColor="#CCCCFF" ReadOnly="true" Text='<%# Eval("Password")%>'
                                            runat="server"></asp:TextBox>
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
                                <td style="width: 33%">
                                    <asp:Button ID="btnsave" Style="float: left" class="button small orange" runat="server" Text="Save"
                                        OnClick="btnsave_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="one_third">
                        <table style="border: 5px solid; width: 275px">
                            <tr>
                                <td style="width: 100px;">Chips On Site
                                </td>
                                <td>
                                    <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="txtonsitechips" runat="server"
                                        BackColor="#CCCCFF" ReadOnly="True"></asp:TextBox>
                                    <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px;">Million</span>
                                </td>
                            </tr>
                        </table>
                        <table style="border: 5px solid; width: 275px">
                            <tr>
                                <td style="width: 100px;">Diffrence
                                </td>
                                <td>
                                    <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="txtdiff" runat="server"
                                        BackColor="#CCCCFF"></asp:TextBox>
                                    <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px;">Million</span>
                                </td>
                            </tr>
                        </table>
                        <table style="border: 5px solid; width: 275px">
                            <tr>
                                <td style="width: 100px;" align="center">
                                    <asp:Button ID="btnenable" class="button small orange" runat="server" Text="Enable All"
                                        OnClick="btnenable_Click" />
                                    <asp:Button ID="btnsaveall" class="button small orange" runat="server" Text="Save All"
                                        OnClick="btnsaveall_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
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
