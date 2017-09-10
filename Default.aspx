<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--facebook--%>
    <div id="fb-root">
    </div>
    <script type="text/javascript">        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    <%--facebook--%>
    <link href="Css/Cart.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- content -->
    <div class="wrapper row3">
        <div id="container">
            <!-- ################################################################################################ -->
            <div id="homepage" class="clear">
                <div class="two_third first">
                    <%--  <div style="margin-bottom: 5px">
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
                    </div>--%>
                    <section class="main_slider">
                        <div class="rslides_container clear">
                            <ul class="rslides clear" id="rslides">
                                <li>
                                    <img src="images/demo/slider/1.jpg" style="height: 240px; width: 780px;" alt="" /></li>
                                <li>
                                    <img src="images/demo/slider/2.png" style="height: 240px; width: 780px;" alt="" /></li>
                                <li>
                                    <img src="images/demo/slider/3.png" style="height: 240px; width: 780px;" alt="" /></li>
                                <li>
                                    <img src="images/demo/slider/4.png" style="height: 240px; width: 780px;" alt="" /></li>
                                <li>
                                    <img src="images/demo/slider/5.png" style="height: 240px; width: 780px;" alt="" /></li>
                            </ul>
                        </div>
                    </section>
                    <div class="clear push50" runat="server">
                        <%--<div class="clear push50" style="display:none" runat="server">--%>
                        <%--<div class="clear push50" runat="server">--%>
                        <!-- ################################################################################################ -->
                        <div class="tab-wrapper clear">
                            <ul class="tab-nav clear">
                                <li><a href="#tab-1">Zynga Poker</a></li>
                                <li><a href="#tab-2">Teen Patti</a></li>
                            </ul>
                            <div class="tab-container" style="width: 95%;">
                                <!-- Tab Content -->
                                <div id="tab-1" class="tab-content clear">
                                    <h2>Zynga Poker&nbsp;
                                        <%--  <asp:DropDownList ID="drpsorting" runat="server">
                                    <asp:ListItem>ASC</asp:ListItem>
                                    <asp:ListItem>DESC</asp:ListItem>
                                </asp:DropDownList>--%>
                                    </h2>
                                    <p>
                                        <div class="pro-main">
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="Paypal.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="Paypal.aspx">
                                                                <asp:Label ID="lblname1" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblprice1" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="Paypal.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="Paypal.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="Paypal.aspx">
                                                                <asp:Label ID="lblname2" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblprice2" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="Paypal.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="Paypal.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="Paypal.aspx">
                                                                <asp:Label ID="lblname3" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblprice3" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="Paypal.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="Paypal.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="Paypal.aspx">
                                                                <asp:Label ID="lblname4" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblprice4" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="Paypal.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="Paypal.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="Paypal.aspx">
                                                                <asp:Label ID="lblname5" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblprice5" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="Paypal.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fp-pro-box">
                                                <div class="fp-display" style="height: 185px;">
                                                    <a href="PaypalDirect.aspx">
                                                        <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                            src="images/ZPCART2.jpg"></a>
                                                </div>
                                                <div class="fp-detail-main">
                                                    <div class="fp-detail">
                                                        <h4>
                                                            <a title="" href="PaypalDirect.aspx">
                                                                <asp:Label ID="lblnameextra" runat="server" Text="Label"></asp:Label>
                                                            </a>
                                                        </h4>
                                                        <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                            <asp:Label ID="lblpriceextra" runat="server" Text="Label"></asp:Label>
                                                        </div>
                                                        <div class="quick-view">
                                                            <a href="PaypalDirect.aspx">
                                                                <img title="" alt="" src="images/quick-view.png"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </p>
                                </div>
                                <!-- ## TAB 2 ## -->
                                <div id="tab-2" class="tab-content clear" style="width: 860px;">
                                    <h2>Teen Patti</h2>
                                    <p>
                                        Teen Patti Closed Right Now
                                    </p>
                                    <p runat="server" visible="false" style="display: none">
                                        <div class="fp-pro-box">
                                            <div class="fp-display" style="height: 185px;">
                                                <a href="PaypalTP.aspx">
                                                    <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                        src="images/TPCART1.jpg"></a>
                                            </div>
                                            <div class="fp-detail-main">
                                                <div class="fp-detail">
                                                    <h4>
                                                        <a title="" href="PaypalTP.aspx">
                                                            <asp:Label ID="lblname6" runat="server" Text="Label"></asp:Label>
                                                        </a>
                                                    </h4>
                                                    <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                        <asp:Label ID="lblprice6" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                    <div class="quick-view">
                                                        <a href="PaypalTP.aspx">
                                                            <img title="" alt="" src="images/quick-view.png"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="fp-pro-box">
                                            <div class="fp-display" style="height: 185px;">
                                                <a href="PaypalTP.aspx">
                                                    <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                        src="images/TPCART1.jpg"></a>
                                            </div>
                                            <div class="fp-detail-main">
                                                <div class="fp-detail">
                                                    <h4>
                                                        <a title="" href="PaypalTP.aspx">
                                                            <asp:Label ID="lblname7" runat="server" Text="Label"></asp:Label>
                                                        </a>
                                                    </h4>
                                                    <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                        <asp:Label ID="lblprice7" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                    <div class="quick-view">
                                                        <a href="PaypalTP.aspx">
                                                            <img title="" alt="" src="images/quick-view.png"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="fp-pro-box">
                                            <div class="fp-display" style="height: 185px;">
                                                <a href="PaypalTP.aspx">
                                                    <img title="" alt="" style="height: 178px; width: 275px; margin-right: 0px; margin-left: -4px;"
                                                        src="images/TPCART1.jpg"></a>
                                            </div>
                                            <div class="fp-detail-main">
                                                <div class="fp-detail">
                                                    <h4>
                                                        <a title="" href="PaypalTP.aspx">
                                                            <asp:Label ID="lblname8" runat="server" Text="Label"></asp:Label>
                                                        </a>
                                                    </h4>
                                                    <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                        <asp:Label ID="lblprice8" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                    <div class="quick-view">
                                                        <a href="PaypalTP.aspx">
                                                            <img title="" alt="" src="images/quick-view.png"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="fp-pro-box">
                                            <div class="fp-display" style="height: 185px;">
                                                <a href="PaypalTP.aspx">
                                                    <img title="" alt="" style="height: 185px;" src="images/TPCART1.jpg"></a>
                                            </div>
                                            <div class="fp-detail-main">
                                                <div class="fp-detail">
                                                    <h4>
                                                        <a title="" href="PaypalTP.aspx">
                                                            <asp:Label ID="lbltpextra" runat="server" Text="Label"></asp:Label>
                                                        </a>
                                                    </h4>
                                                    <div class="price" style="height: 45px; margin-top: 12px; font-size: 30px;">
                                                        <asp:Label ID="lbltppriceextra" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                    <div class="quick-view">
                                                        <a href="PaypalTP.aspx">
                                                            <img title="" alt="" src="images/quick-view.png"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </p>
                                </div>
                                <!-- / Tab Content -->
                            </div>
                        </div>
                        <!-- ################################################################################################ -->
                    </div>
                    <div class="pro-main">
                    </div>
                    <div id="paypal" style="display: none;">
                        <ul class="nospace push50 clear">
                            <li class="one_third first">
                                <article>
                                    <div class="push20">
                                        <a href="Paypal.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/25.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                            <li class="one_third">
                                <article>
                                    <div class="push20">
                                        <a href="Paypal.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/50.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                            <li class="one_third">
                                <article>
                                    <div class="push20">
                                        <a href="Paypal.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/100.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                        </ul>
                        <ul class="nospace push50 clear">
                            <li class="one_third first">
                                <article>
                                    <div class="push20">
                                        <a href="Paypal.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/500.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                            <li class="one_third">
                                <article>
                                    <div class="push20">
                                        <a href="Paypal.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/1000.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                            <li class="one_third">
                                <article>
                                    <div class="push20">
                                        <a href="PaypalDirect.aspx" style="color: #666666">
                                            <img style="border: solid 5px; width: 200px; height: 290px;" src="images/PaypalPayee/200.png" />
                                        </a>
                                    </div>
                                </article>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- #### -->
                <div class="one_third">
                    <div class="clear push30">
                    </div>
                   <%-- <div class="tab-wrapper clear">
                        <!-- PayPal Logo -->
                        <table style="border: none" cellpadding="10" cellspacing="0" align="center">
                            <tr>
                                <td align="center" style="border: none"></td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <a href="https://www.facebook.com/pokerking1212">
                                        <img src="images/fb_icon.png" style="height: 53px; width: 53px;" />
                                    </a>
                                </td>
                            </tr>
                        </table>
                        <!-- PayPal Logo -->
                    </div>
                    <table>
                        <tr>
                            <td style="border: none" align="center">
                                <iframe src="http://free.timeanddate.com/clock/i4h5ar4s/n1648/fn2/tcccc/bo2/ts1/ta1"
                                    frameborder="0" width="104" height="23"></iframe>
                            </td>
                        </tr>
                    </table>--%>
                    <%--     <div class="tab-wrapper clear">
                        <!-- PayPal Logo -->
                        <table style="border: none" cellpadding="10" cellspacing="0" align="center">
                            <tr>
                                <td align="center" style="border: none">
                                </td>
                            </tr>
                           <tr>
                                <td align="center" style="border: none">
                                    <a href="https://www.paypal.com/webapps/mpp/paypal-popup" title="How PayPal Works"
                                        onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;">
                                        <img src="images/Paypal.png" style="height: 55px; width: 159px;" border="0" alt="Secured by PayPal"></a><div
                                            style="text-align: center">
                                            <a href="https://www.paypal.com/webapps/mpp/how-paypal-works"><font size="2" face="Arial"
                                                color="#0079CD"><b>How PayPal Works</b></font></a></div>
                                </td>
                            </tr>
                        </table>
                        <!-- PayPal Logo -->
                    </div>--%>
                    <div class="clear push30">
                    </div>
                    <div style="margin-left: 50px; border-style: solid; border-color: black;">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- Chips Seller Responsive Side Menu -->
                        <ins class="adsbygoogle"
                            style="display: block"
                            data-ad-client="ca-pub-1373088425496976"
                            data-ad-slot="4680089043"
                            data-ad-format="auto"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                    <div class="clear push30">
                    </div>
                    <h2 style="margin-left: 75px;" class="nospace font-medium push20">Lowest price guaranteed!</h2>
                    <div class="tab-wrapper clear">
                        <table style="border: none" cellpadding="10" cellspacing="0" align="center">
                            <tr>
                                <td align="center" style="border: none"></td>
                            </tr>
                            <tr>
                                <td style="border: none" align="center">
                                    <img src="images/bestprice.jpg" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <h2 style="margin-left: 50px;" class="nospace font-medium push20">Secure Transactions & Payments</h2>
                    <div class="tab-wrapper clear">
                        <table style="border: none" cellpadding="10" cellspacing="0" align="center">
                            <tr>
                                <td align="center" style="border: none"></td>
                            </tr>
                            <tr>
                                <td style="border: none" align="center">
                                    <img src="images/secure.jpg" />
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
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
            <div id="Div1">
                <div id="Div2" class="clear">
                    <section class="clear">
                        <article class="one_quarter first">
                            <h2 style="text-transform: lowercase">Like Us On Facebook</h2>
                            <p>
                                <div class="fb-like-box" data-href="https://www.facebook.com/pages/Poker-Fan-Club/154544731397058?ref=hl" data-width="500" data-height="500" data-show-faces="true" data-stream="true" data-show-border="true" data-header="false"></div>
                            </p>
                        </article>
                    </section>
                </div>
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
</asp:Content>
