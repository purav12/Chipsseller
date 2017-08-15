<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Loggin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7 ]><html class="ie ie6"  > <![endif]-->
<!--[if IE 7 ]><html class="ie ie7"  > <![endif]-->
<!--[if IE 8 ]><html class="ie ie8"  > <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html>
<!--<![endif]-->
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Login Form</title>
    <meta name="description" content="Connect With Best Chips Sellers In India To Buy Or Sell Zynga Poker Chips" />
    <meta name="author" content="Purav Mehta Poker" />
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/skeleton.css" />
    <link rel="stylesheet" href="css/layout.css" />
</head>
<body>
    <div style="visibility: visible" id="Error" class="notice" runat="server">
        <a href="" class="close">close</a>
        <p class="warn" id="alwz" runat="server">
            Whoops! We didn't recognise your username or password. Please try again.
        </p>
        <p class="warn" id="hack" runat="server" visible="false">
            I Got Your Trick Man.. ;)
        </p>
    </div>

    <!-- Primary Page Layout -->
    <div style="visibility: visible" class="container">
          <div style="margin-top: 50px">
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
        <div style="visibility: visible" class="form-bg">

          


            <form id="Form1" runat="server">
                <h2>Login</h2>
                <p>
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Username Or Email Id"></asp:TextBox>
                </p>
                <p>
                    <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                </p>
                <label for="remember">
                    <input type="checkbox" id="Checkbox1" value="remember" />
                    <span>Remember me on this computer</span>
                </label>
                <asp:Button ID="btnloggin" class="colour" runat="server" OnClick="btnloggin_Click" />
            </form>
        </div>
        <p class="forgot">
            Create An Account <a href="SignUp.aspx">Click here to Sign Up.</a>
        </p>
        <p class="forgot">
            <a href="forgot.aspx">Forgot Password</a>
        </p>
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
    <!-- container -->
    <!-- JS  -->
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
    <script type="text/javascript">        window.jQuery || document.write("<script src='js/jquery-1.5.1.min.js'>\x3C/script>")</script>
    <script type="text/javascript" src="js/app.js"></script>
    <!-- End Document -->
</body>
</html>
