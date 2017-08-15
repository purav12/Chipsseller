<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="Idlist.aspx.cs" Inherits="Idlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 194px;
        }

        .style2 {
            width: 151px;
        }
    </style>
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <h2>Id Details
            </h2>
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Id Added Succesfuly<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <div class="clear push50">
                <table>
                    <tr>
                        <td class="style1">Email Address
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtName" ErrorMessage="Enter Email" ForeColor="Red"
                                ValidationGroup="Submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Email Password
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtmailpass" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">Facebook Password
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtfbpass" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">Status
                        </td>
                        <td class="style2">
                            <asp:DropDownList ID="drpstatus" runat="server">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Waiting</asp:ListItem>
                                <asp:ListItem>Banned</asp:ListItem>
                                <asp:ListItem>Hacked</asp:ListItem>
                                <asp:ListItem>Else</asp:ListItem>
                                <asp:ListItem>Disabled</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">P
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtP" runat="server">1</asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">Remarks
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">&nbsp;
                        </td>
                        <td class="style2">
                            <asp:Button ID="btnaddid" runat="server" class="button small orange" Text="Add"
                                OnClick="btnadddetail_Click" ValidationGroup="Submit" />
                            &nbsp;
                        </td>
                        <td></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="style1">
                            <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:Button ID="btnsearch" runat="server" class="button small orange"
                                Text="Search" OnClick="btnsearch_Click" ValidationGroup="NotSubmit" />
                        </td>
                        <td></td>
                    </tr>
                </table>
                <br />
                <br />
                <h2>Active
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView1_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <br />
                <h2>Waiting
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView2_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <br />
                <h2>Hacked
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView3_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <br />
                <h2>Banned
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView4_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <br />
                <h2>Else
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView5_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <h2>Disabled
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                OnRowCommand="GridView6_RowCommand">
                                <AlternatingRowStyle CssClass="alt" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="PasswordEmail" HeaderText="EmailPass" />
                                    <asp:BoundField DataField="PasswordFb" HeaderText="FB" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width: 330px" id="Width" runat="server">
                <table>
                    <tr>
                        <td>Id
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email Password
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Fb Pass
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Status
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>P
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Remarks
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Insert" class="button small orange"
                                OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Update" class="button small orange"
                                OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" Text="Delete" class="button small orange"
                                OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
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
