<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PaypalDirect.aspx.cs" Inherits="PaypalDirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="JS/jquery-1.3.2.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-alerts-main.js"></script>
    <script type="text/javascript" src="js/jquery-alerts.js"></script>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode == 46) {
                return true;
            }
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

        function checkValidationPaypalDirect() {
            if (document.getElementById('txtamount').value.replace(/^\s+|\s+$/g, '') == '') {
                alert('Please enter Amount To Pay.');
                document.getElementById('txtamount').focus();
                return false;
            }
            else if (document.getElementById('txtMailpaypal').value.replace(/^\s+|\s+$/g, '') == '') {
                alert('Please Enter Email Address To Get Order Details.');
                document.getElementById('txtMailpaypal').focus();
                return false;
            }
        }

        function checkValidationPaypalDirect1() {
            alert("Payumoney Is Temporary Closed Due To Some Maintenance");
            return false;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- content -->
    <div class="wrapper row3">
        <div id="container">

            <div class="clear">
                <h2>Pay Your Desire Amount</h2>
              <%--  <table style="width: 50%">
                    <tr>
                        <td style="font-weight: bold; font-size: larger;">Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>--%>
                <table style="width: 50%">
                    <tr>
                        <td style="font-weight: bold; font-size: larger;">Name -
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: larger;">Email Address -
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailpaypal" runat="server"></asp:TextBox>
                            <%--<span style="font-size: large; margin-top: 5px;">(Get Mail For Your Order
                            Refrence)</span>--%>
                        </td>
                        <%--<td style="float: left;">
                            <span style="font-size: large; float: right; margin-top: 5px;">(Get Mail For Your Order
                            Refrence)</span>
                        </td>--%>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: larger;">Mobile Number -
                        </td>
                        <td>
                            <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <!-- #################################################################################################### -->
                <div class="one_fifth" style="margin-left: 444px;">
                    <div class="pricingtable-wrapper">
                        <div class="pricingtable">
                            <div class="pricingtable-title">
                                <h2></h2>
                            </div>
                            <div class="pricingtable-list">
                            </div>
                            <div class="pricingtable-price">
                                <asp:TextBox ID="txtamount" Width="140px" Style="margin-left: 13px;" onkeypress="return isNumberKey(event);"
                                    runat="server"></asp:TextBox><span style="margin-top: 5px; font-size: medium;">INR</span>
                            </div>
                            <div class="pricingtable-signup">
                                <asp:Button ID="btmRandom" class="button large gradient orange" OnClientClick="return checkValidationPaypalDirect();"
                                    Text="Pay Now" runat="server" OnClick="btmRandom_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #################################################################################################### -->
            </div>
            <!-- ################################################################################################ -->
            <div class="clear">
            </div>
            <div style="margin-bottom: 5px; margin-top: 5px;">
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
        </div>
    </div>
    <input type="hidden" runat="server" id="key" name="key" />
    <input type="hidden" runat="server" id="hash" name="hash" />
    <input type="hidden" runat="server" id="txnid" name="txnid" />
    <!-- Footer -->
</asp:Content>
