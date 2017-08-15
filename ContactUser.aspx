<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true"
    CodeFile="ContactUser.aspx.cs" Inherits="ContactUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <div id="fb-root">
    </div>
    <script>        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
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
            <div id="Div2" class="clear">
                <section class="clear">
                    <article>
                        <h2 style="text-transform: lowercase">Contact Us</h2>
                        <br />
                        <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Message Sent Succesfuly<a class="close" href="javascript:void(0)">X</a></asp:Label>
                        <br />
                        <img src="Images/contact_us.gif" />
                        <div runat="server" class="one_third first" id="newadvertise" style="float: right;">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Post Page Responsive Side Menu -->
                            <ins class="adsbygoogle"
                                style="display: block"
                                data-ad-client="ca-pub-1373088425496976"
                                data-ad-slot="6569598241"
                                data-ad-format="auto"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                        <table>
                            <tr>
                                <td>Email
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMail" runat="server" Style="width: 50%;"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="txtMail" ErrorMessage="Enter Your Mail" ForeColor="Red"
                                        ValidationGroup="Contact"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ControlToValidate="txtMail" ErrorMessage="Not Valid" ForeColor="Red"
                                        ValidationGroup="Contact"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Message
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMessagec" runat="server" Style="width: 50%;" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                        ControlToValidate="txtMessagec" ErrorMessage="Enter Message" ForeColor="Red"
                                        ValidationGroup="Contact"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" class="button small orange" Text="Send Message" OnClick="Button1_Click"
                                        ValidationGroup="Contact"></asp:Button>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <p class="nospace font-medium push20">Contact Number &nbsp; &nbsp;&nbsp;+91 9426462960  (Purav Mehta)</p>
                        <br />
                        <p class="nospace font-medium push20">&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp &nbsp &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp; +91 7405143466  </p>
                        <br />
                        <p class="nospace font-medium push20">WhatsApp&nbsp &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp; +91 9426462960</p>
                        <br />
                        <p class="nospace font-medium push20">Yahoo (MSN) &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp; puravmehta1212@yahoo.com</p>
                        <br />
                        <p class="nospace font-medium push20">
                            Facebook &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;  
                            <a href="https://www.facebook.com/pokerking1212">
                                <img src="images/fb_icon.png" style="height: 53px; width: 53px;" />
                            </a>
                        </p>
                        <br />
                        <p class="nospace font-medium push20">Skype &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/pokerking1212">Skype</a></p>

                    </article>
                </section>
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
            <!-- ################################################################################################ -->

        </div>
    </div>
</asp:Content>
