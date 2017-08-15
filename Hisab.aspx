<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="Hisab.aspx.cs" Inherits="Hisab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function GetDone() {
            var lblstock1 = document.getElementById('lblstock1').value;
            var lblstock2 = document.getElementById('lblstock2').value;
            var lblstock3 = document.getElementById('lblstock3').value;
            var lblstock4 = document.getElementById('lblstock4').value;
            var lblstock5 = document.getElementById('lblstock5').value;
            var lblstock6 = document.getElementById('lblstock6').value;
            var lblstock7 = document.getElementById('lblstock7').value;
            var lblstock8 = document.getElementById('lblstock8').value;
            var lblstock9 = document.getElementById('lblstock9').value;
            var lblstock10 = document.getElementById('lblstock10').value;
            var lblstock11 = document.getElementById('lblstock11').value;

            var lbltotalstock9 = document.getElementById('lbltotalstock9').value;
            var txtonsitechips = document.getElementById('txtonsitechips').value;

            var result = parseInt(lblstock1) + parseInt(lblstock2) + parseInt(lblstock3) + parseInt(lblstock4) + parseInt(lblstock5) + parseInt(lblstock6) + parseInt(lblstock7) + parseInt(lblstock8) + parseInt(lblstock9) + parseInt(lblstock10) + parseInt(lblstock11);

            if (!isNaN(result)) {
                document.getElementById('lbltotalstock9').value = result;

            }
            var result1 = parseInt(txtonsitechips) - result;
            if (!isNaN(result1)) {
                document.getElementById('txtdiffrence').value = result1;

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
                <div class="one_half first">
                    <asp:HyperLink ID="HyperLink1" href="http://chipsseller.com/AdminUser.aspx" runat="server">Back</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <div id="respond">
                        <h2>Hisab</h2>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <div class="portfolio">
                            <ul class="clear">
                                <li class="one_half first">
                                    <table style="border: 5px solid; width: 400px;">
                                        <tr>
                                            <td style="width: 100px;">
                                                <asp:Label ID="lblid1" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock1" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid2" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock2" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid3" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock3" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid4" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock4" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid5" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock5" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid6" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock6" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid7" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock7" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid8" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock8" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid9" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock9" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid10" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock10" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid11" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lblstock11" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr style="display: none">
                                            <td>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="TextBox1" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Total Chips
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="lbltotalstock9" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px; margin-right: 143px;">Million</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Button ID="btnsubmit" class="button small orange" runat="server" Text="Update"
                                                    OnClick="btnsubmit_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </li>
                                <li class="one_half">
                                    <table style="border: 5px solid; margin-top: 100px; width: 100%; margin-left: 175px;">
                                        <tr>
                                            <td style="width: 100px;">Chips On Site
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" onkeyup="GetDone()" ID="txtonsitechips" runat="server"
                                                    BackColor="#CCCCFF" ReadOnly="True"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px;">Million</span>
                                            </td>
                                        </tr>
                                    </table>
                                    </br> </br>
                                    <table style="border: 5px solid; margin-top: 100px; width: 100%; margin-left: 175px;">
                                        <tr>
                                            <td style="width: 100px;">Diffrence
                                            </td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <td>
                                                <asp:TextBox Style="width: 75px" ID="txtdiffrence" runat="server"></asp:TextBox>
                                                <span style="float: right; padding-top: 0px; margin-bottom: 0px; margin-top: -25px;">Million</span>
                                            </td>
                                        </tr>
                                    </table>
                                </li>
                            </ul>
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
