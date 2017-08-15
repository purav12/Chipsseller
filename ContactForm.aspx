<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ContactForm.aspx.cs" Inherits="Members" %>

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
            <h2>Contact Form </h2>
            (This page is kind of forum we are not responsible for any comments below, kindly <a href="Contact.aspx" target="_blank">Contact Us</a> for more information)
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Submited Succesfully<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnbuyzynga" class="button small orange" runat="server" Text="Buy Zynga Chips"
                            OnClick="btnbtnbuyzynga_Click" Style="margin-bottom: 20px;" />
                    </td>
                    <td>
                        <asp:Button ID="btnbuyTP" class="button small orange" runat="server" Text="Buy Octroy Teen Patti Coins"
                            OnClick="btnbtnbuyTP_Click" Style="margin-bottom: 20px;" />
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td style="width: 20%;">Name
                    </td>
                    <td style="width: 70%;">
                        <asp:TextBox ID="txtName" runat="server" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Subject
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Subject"
                            ForeColor="Red" ValidationGroup="Submit" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contact Number / Email
                    </td>
                    <td>
                        <asp:TextBox ID="txtcontacts" runat="server" Width="50%"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>Comment
                    </td>
                    <td>
                        <asp:TextBox ID="txtDetails" runat="server" TextMode="MultiLine" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Details"
                            ForeColor="Red" ValidationGroup="Submit" ControlToValidate="txtDetails"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" class="button small orange" runat="server" Text="Submit"
                            OnClick="btnSubmit_Click" ValidationGroup="Submit" />
                    </td>
                </tr>
            </table>
            <br />

            <asp:Button ID="Button1" class="button small orange" runat="server" Text="Latest"
                OnClick="btnSubmitLatest_Click" Style="margin-bottom: 20px;" />

            <br />
            (This page is kind of forum we are not responsible for any comments below, kindly <a href="Contact.aspx" target="_blank">Contact Us</a> for more information)
            <br />
            <br />
             <div class="one_half second">
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
            <div class="clear push50">
               
                <asp:Repeater ID="RepDetails" runat="server">
                    <HeaderTemplate>
                        <table style="border: 2px solid #df5015; width: 500px" cellpadding="0">
                            <tr style="background-color: #df5015; color: White">
                                <td colspan="2">
                                    <b>Comments</b>
                                </td>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <table style="width: 500px;">
                                    <tr>
                                        <td>Subject:
                                            <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("Subject") %>' Font-Bold="true" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblComment" runat="server" Text='<%#Eval("Details") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="background-color: #EBEFF0; width: 500px">
                                    <tr>
                                        <td>Post By:
                                            <asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("Name") %>' />
                                        </td>
                                        <td>Posted Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("PostedDate") %>' />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="background-color: #df5015; color: White">
                            <td colspan="2">&nbsp;
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

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
