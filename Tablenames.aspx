<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Tablenames.aspx.cs" Inherits="Tablenames" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
    <!-- Get geo information -->
    <script type="text/javascript" src="http://geoiplookup.wikimedia.org/">
    </script>
    <!-- JavaScript object-to-JSON -->
    <!-- Don't actually hotlink this; host it yourself -->
    <script type="text/javascript" src="https://github.com/douglascrockford/JSON-js/blob/master/json2.js">
    </script>
    <style type="text/css">
        .button.mine {
            color: #FFFFFF;
            background-color: #232323;
            border-color: #999999;
        }

            .button.mine:hover {
                color: #666666;
                background-color: #232323;
                border-color: #000000;
            }

            .button.mine.gradient {
                background: #000000;
                background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHZpZXdCb3g9IjAgMCAxIDEiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPgo8bGluZWFyR3JhZGllbnQgaWQ9Imc2OTMiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMCUiIHkxPSIwJSIgeDI9IjAlIiB5Mj0iMTAwJSI+CjxzdG9wIHN0b3AtY29sb3I9IiM5OTk5OTkiIG9mZnNldD0iMCIvPjxzdG9wIHN0b3AtY29sb3I9IiMwMDAwMDAiIG9mZnNldD0iMSIvPgo8L2xpbmVhckdyYWRpZW50Pgo8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2c2OTMpIiAvPgo8L3N2Zz4=);
                background: -moz-linear-gradient(#999999 0%, #000000 100%);
                background: -webkit-gradient(color-stop(0%,#999999), color-stop(100%,#000000));
                background: -webkit-linear-gradient(#999999 0%,#000000 100%);
                background: -o-linear-gradient(#999999 0%,#000000 100%);
                background: -ms-linear-gradient(#999999 0%,#000000 100%);
                background: linear-gradient(#999999 0%,#000000 100%);
            }
    </style>
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
            <br />
            <!-- ################################################################################################ -->
            <div class="clear push50">
                <h2>Zbot Gui Table Finder
                    <br />
                    Works In Chrome, Torch, Comodo, Opera etc Browsers  (Auto Update Extention)
                </h2>
                <!-- ################################################################################################ -->
                <table style="width: 100%; display:none">
                    <tr>
                        <td>Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                Font-Size="Large" ErrorMessage="Enter Name" ForeColor="#CC0000" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email (Get Instant Email)
                        </td>
                        <td>
                            <asp:TextBox ID="txtmail" Style="width: 75%" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmail"
                                    Font-Size="Large" ErrorMessage="Enter Email" ForeColor="#CC0000" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
                                Font-Size="Large" ErrorMessage="Enter Valid Email" ValidationGroup="Submit" ForeColor="#CC0000"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnsendmail" class="button small orange" runat="server" Text="Send Tool"
                                OnClick="btnSendMail_Click" ValidationGroup="Submit" />
                            (Only yahoo mails are working right now)
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <a href="https://chrome.google.com/webstore/detail/tablenames-and-casinolist/fnmahgkkkbneafgnndnbbjbjecbnahde" target="_blank">
                                <input class="button mine" type="button" value="Extention Download Link" />
                            </a>
                        </td>
                    </tr>
                    <asp:Label ID="lblstatus" Style="color: Red;" Visible="false" runat="server" Text="Mail Sent Successfully"></asp:Label>
                </table>


                  <table style="width: 100%;">
                    
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button2" class="button small orange" runat="server" Text="Download Application"
                                OnClick="btnSendApp_Click"/>
                             
                        </td>
                    </tr>
                    
                    <asp:Label ID="Label2" Style="color: Red;" Visible="false" runat="server" Text="Mail Sent Successfully"></asp:Label>
                </table> 
                <table style="width: 100%; display: none">
                    <tr>
                        <td style="width: 49%;">
                            <table style="width: 100%;">
                                <tr>
                                    <td colspan="2">
                                        <h1>Zynga Version 2.0.5</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="4">
                                        <img src="images/logo.png" style="width: 200px; height: 200px;" alt="zyngabypm" />
                                    </td>
                                    <td>
                                        <b>Shows Table Names And Casino List</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Show Leader Board</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Send Gift On Table Available</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Run Slow</b>
                                    </td>
                                </tr>
                                <%--  <tr>
                                    <td>
                                        <a href="Gallery.aspx"><b>Screen Shot</b></a>
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td style="width: 50%;"></td>
                                    <td style="width: 50%;">
                                        <a href="https://chrome.google.com/webstore/detail/tablenames-and-casinolist/fnmahgkkkbneafgnndnbbjbjecbnahde" target="_blank">
                                            <input class="button mine" type="button" value="Download Link" />
                                        </a>
                                        <asp:Label ID="lbldownloads" Visible="false" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 2%; border-left: 1px solid; display: none;"></td>
                        <td style="width: 49%; display: none;">
                            <table style="width: 100%;">
                                <tr>
                                    <td colspan="2">
                                        <h1>Modi Tool</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="4">
                                        <img src="images/Namo%20Modi.png" style="width: 200px; height: 200px;" alt="namomodi" />
                                    </td>
                                    <td>
                                        <b>Shows Table Names And Casino List</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>No Leader Board</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Old Table And Casino View</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Run Fast</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%;"></td>
                                    <td style="width: 50%;">
                                        <a href="https://chrome.google.com/webstore/detail/modi-tool-by-httpchipssel/apkjhoefdkkeedhokjoaoeobjpgfjopk" target="_blank">
                                            <input class="button mine" type="button" value="Download Link" />
                                        </a>
                                        <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%; display: none;">
                    <tr>
                        <td style="width: 20%; visibility: hidden;">
                            <asp:Button ID="Button1" Style="padding: 30px 30px 22px 30px;" ValidationGroup="Submit"
                                class="button green" runat="server" Text="Direct Download" OnClick="btndirectdownload_Click" />
                        </td>
                        <td style="width: 20%">
                            <asp:Button ID="btndownload" Style="padding: 30px 30px 22px 30px;" ValidationGroup="Submit"
                                class="button green" runat="server" Text="Download Zip" OnClick="btndownload_Click" />
                        </td>
                        <td align="left"></td>
                    </tr>
                </table>
                <!-- ################################################################################################ -->
            </div>
            <h2>Video Demo (How To Use) -
            </h2>
            <iframe width="750px" height="500px"
                src="http://www.youtube.com/embed/wes6UzJjKVc"></iframe>
            <br />
            <h2>YouTube Video -
                <asp:HyperLink ID="HyperLink1" href="https://youtu.be/wes6UzJjKVc"
                    Target="_blank" runat="server">https://youtu.be/wes6UzJjKVc</asp:HyperLink>
            </h2>
            <br />
           <%-- <h2>Download Link -
                <asp:HyperLink ID="HyperLink2" href="http://chipsseller.com/ZyngaPokerTableNamesWorkingToolPermenentSolution.mp4"
                    Target="_blank" runat="server">http://chipsseller.com/ZyngaPokerTableNamesWorkingToolPermenentSolution.mp4</asp:HyperLink>
            </h2>--%>
            <br />
            <div style="margin-bottom: 5px">
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
            <%--  <h2 style="text-transform: lowercase">
                How To Use (Video Attached)-
            </h2>
            <p>
                (1) This Tool Works In Both Google Chrome And Torch Browser :-
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Torch Browser Download Link<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                http://www.torchbrowser.com/ Or<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://download.cnet.com/Torch-Browser/3000-2356_4-75740051.html
                <br />
                <br />
                (2) Download Tool From Chrome Webstore From The Link Above :-
                <br />
                <br />                
                (3)<b> Pres Ctrl + F5 (Or Zynga Icon On Top Right):-</b>
                <br />
                <br />
                (4) Any Problem Comment Below.. :-
                <br />
                <br />
            </p>--%>
            <br />
            <h2 style="text-transform: lowercase">Comments</h2>
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">submitted Succesfully<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <table>
                <tr>
                    <td>Name
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Submit1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Subject
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Subject"
                            ForeColor="Red" ValidationGroup="Submit1" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Comment
                    </td>
                    <td>
                        <asp:TextBox ID="txtDetails" runat="server" TextMode="MultiLine" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Details"
                            ForeColor="Red" ValidationGroup="Submit1" ControlToValidate="txtDetails"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>4 + 8
                    </td>
                    <td>
                        <asp:TextBox ID="txtcode" runat="server" TextMode="MultiLine" Width="50%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Answer"
                            ForeColor="Red" ValidationGroup="Submit1" ControlToValidate="txtcode"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit1" class="button small orange" runat="server" Text="Submit"
                            OnClick="btnSubmit1_Click" ValidationGroup="Submit1" />
                    </td>
                </tr>
            </table>
            <br />
            <%-- <div id="chart_div" style="width: 900px; height: 500px;">
            </div>--%>
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
            <div style="display: none">
                <CKEditor:CKEditorControl ID="txthome" BasePath="/ckeditor/" runat="server" Height="500"
                    Width="1000">
                </CKEditor:CKEditorControl>
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
        <!-- Hidden field to hold result -->
        <asp:HiddenField ID="hdnGeo" runat="server"></asp:HiddenField>
        <script type="text/javascript">
            document.getElementById('<%= hdnGeo.ClientID %>').value =
        JSON.stringify(Geo);
        </script>
    </div>
</asp:Content>
