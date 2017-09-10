<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Paypal.aspx.cs" Inherits="Paypal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function checkValidationPaypal() {
            if (document.getElementById('txtMailpaypal').value.replace(/^\s+|\s+$/g, '') == '') {
                alert('Please enter email address.');
                document.getElementById('txtMailpaypal').focus();
                return false;
            }
            else if (document.getElementById('txtMailpaypal').value.replace(/^\s+|\s+$/g, '') != '' && !checkemail1(document.getElementById('txtMailpaypal').value)) {
                alert('Please enter valid email address.');
                document.getElementById('txtMailpaypal').focus();
                return false;
            }
            else {
                return true;
            }
        }
        var testresults;
        function checkemail1(str) {
            var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{1,6}(?:\.[a-z]{1})?)$/i
            if (filter.test(str))
                testresults = true
            else {
                testresults = false
            }
            return (testresults)
        }

        function checkValidationPaypal1() {
            alert("Paypal Is Temporary Closed Due To Some Maintenance");
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- content -->
    <div class="wrapper row3">
        <div id="container">

            <div id="Div2" class="clear">
                <section class="clear">

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

                    <%--<article >
          <h2 style="width: 370px;">Email Address - <asp:TextBox style="float:right" ID="txtMailpaypal" runat="server"></asp:TextBox> <span style="font-size: large; float: right;margin-top: 5px;">(Get Mail For Your Order Refrence)</span>
          </h2>
          <br />
          </article>--%>
                    <div class="clear">

                        <%--x=100y+100 / 93.6      y=93.6x -100 / 100--%>
                        <!-- #################################################################################################### -->
                        <div class="one_fifth first" style="border: 2px solid;">
                            <div class="pricingtable-wrapper">
                                <div class="pricingtable">
                                    <div class="pricingtable-title">
                                        <h2>
                                            <asp:Label ID="lblname1" runat="server" Text="Label"></asp:Label>
                                            Million
                                        </h2>
                                    </div>
                                    <div class="pricingtable-list">
                                        <ul style="height: 147px;">
                                            <li>
                                                <asp:Label ID="lblprice1" runat="server" Text="Label"></asp:Label></li>
                                            <li>0.0 % Tax</li>
                                            <li>0.00 INR Charge</li>
                                            <li>0.0 % Exchange</li>
                                            `
                                        </ul>
                                    </div>
                                    <div class="pricingtable-price">
                                        <sup>&#8377;</sup><asp:Literal ID="lblcount1" runat="server" Text="Label"></asp:Literal><span>INR</span>
                                    </div>
                                    <div class="pricingtable-signup">
                                        <asp:Button ID="btn25m" class="button large gradient orange" OnClientClick="return checkValidationPaypal();" Text="Pay Now"
                                            runat="server" OnClick="btn25m_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- #################################################################################################### -->
                        <%--<asp:Literal ID="Literal2" runat="server"></asp:Literal>--%>
                        <!-- #################################################################################################### -->
                        <div class="one_fifth" style="border: 2px solid; margin-left: 55px;">
                            <div class="pricingtable-wrapper">
                                <div class="pricingtable">
                                    <div class="pricingtable-title">
                                        <h2>
                                            <asp:Label ID="lblname2" runat="server" Text="Label"></asp:Label>
                                            Million </h2>
                                    </div>
                                    <div class="pricingtable-list">
                                        <ul>
                                            <li>
                                                <asp:Label ID="lblprice2" runat="server"></asp:Label></li>
                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                            <li>0.0 % Tax</li>
                                            <li>0.00 INR Charge</li>
                                            <li>0.0 % Exchange</li>
                                        </ul>
                                    </div>
                                    <div class="pricingtable-price">
                                        <sup>&#8377;</sup><asp:Literal ID="lblcount2" runat="server" Text="64"></asp:Literal><span>INR</span>
                                    </div>

                                    <%--<div class="pricingtable-price">
                                <sup>&#8377;</sup><asp:Label ID="lblcount2" runat="server" Text="64"></asp:Label><span>INR</span></div>--%>
                                    <div class="pricingtable-signup">
                                        <asp:Button ID="btn50m" class="button large gradient orange" OnClientClick="return checkValidationPaypal();" Text="Pay Now"
                                            runat="server" OnClick="btn50m_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- #################################################################################################### -->
                        <!-- #################################################################################################### -->
                        <div class="one_fifth" style="border: 2px solid; margin-left: 55px;">
                            <div class="pricingtable-wrapper">
                                <div class="pricingtable">
                                    <div class="pricingtable-title">
                                        <h2>
                                            <asp:Label ID="lblname3" runat="server" Text="Label"></asp:Label>
                                            Million </h2>
                                    </div>
                                    <div class="pricingtable-list">
                                        <ul>
                                            <li>
                                                <asp:Label ID="lblprice3" runat="server" Text="Label"></asp:Label></li>
                                            <li>0.0 % Tax</li>
                                            <li>0.00 INR Charge</li>
                                            <li>0.0 % Exchange</li>
                                        </ul>
                                    </div>
                                    <div class="pricingtable-price">
                                        <sup>&#8377;</sup><asp:Literal ID="lblcount3" runat="server" Text="Label"></asp:Literal><span>INR</span>
                                    </div>
                                    <div class="pricingtable-signup">
                                        <asp:Button ID="btn100m" class="button large gradient orange" Text="Pay Now"
                                            runat="server" OnClientClick="return checkValidationPaypal();" OnClick="btn100m_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- #################################################################################################### -->
                        <!-- #################################################################################################### -->
                        <div class="one_fifth" style="border: 2px solid; margin-left: 55px;">
                            <div class="pricingtable-wrapper">
                                <div class="pricingtable">
                                    <div class="pricingtable-title">
                                        <h2>
                                            <asp:Label ID="lblname4" runat="server" Text="Label"></asp:Label>
                                            Million </h2>
                                    </div>
                                    <div class="pricingtable-list">
                                        <ul>
                                            <li>
                                                <asp:Label ID="lblprice4" runat="server" Text="Label"></asp:Label></li>
                                            <li>0.0 % Tax</li>
                                            <li>0.00 INR Charge</li>
                                            <li>0.0 % Exchange</li>
                                        </ul>
                                    </div>
                                    <div class="pricingtable-price">
                                        <sup>&#8377;</sup><asp:Literal ID="lblcount4" runat="server" Text="Label"></asp:Literal><span>INR</span>
                                    </div>
                                    <div class="pricingtable-signup">
                                        <asp:Button ID="btn500m" class="button large gradient orange" Text="Pay Now"
                                            runat="server" OnClientClick="return checkValidationPaypal();" OnClick="btn500m_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- #################################################################################################### -->
                        <!-- #################################################################################################### -->
                        <div class="one_fifth" style="border: 2px solid; margin-left: 55px;">
                            <div class="pricingtable-wrapper">
                                <div class="pricingtable">
                                    <div class="pricingtable-title">
                                        <h2>
                                            <asp:Label ID="lblname5" runat="server" Text="Label"></asp:Label>
                                            Billion </h2>
                                    </div>
                                    <div class="pricingtable-list">
                                        <ul>
                                            <li>
                                                <asp:Label ID="lblprice5" runat="server" Text="Label"></asp:Label></li>
                                            <li>0.0 % Tax</li>
                                            <li>0.00 INR Charge</li>
                                            <li>0.0 % Exchange</li>
                                        </ul>
                                    </div>
                                    <div class="pricingtable-price">
                                        <sup>&#8377;</sup><asp:Literal ID="lblcount5" runat="server" Text="Label"></asp:Literal><span>INR</span>
                                    </div>
                                    <div class="pricingtable-signup">
                                        <asp:Button ID="btn1bill" class="button large gradient orange" Text="Pay Now"
                                            runat="server" OnClientClick="return checkValidationPaypal();" OnClick="btn1bill_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- #################################################################################################### -->
                    </div>

                    <section class="calltoaction opt1 clear" style="margin-top: 60px; border-width: 3px; border-color: rgb(102, 102, 102);" class="calltoaction opt1 clear">
                        <div class="three_quarter first">
                            <h1>Pay Desire Amount</h1>
                        </div>
                        <div class="one_quarter"><a href="PaypalDirect.aspx" class="button large gradient orange">Pay Now</a></div>
                    </section>
                    <!-- ################################################################################################ -->
                    <div class="clear">
                    </div>
                    <div style="margin-bottom: 5px; border-style: solid; border-color: black;">
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
                    <div style="margin-bottom: 5px; border-style: solid; border-color: black;">
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
