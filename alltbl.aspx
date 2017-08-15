<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="alltbl.aspx.cs" Inherits="alltbl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>Contact Us
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button16" Style="padding: 0px; font-size: 0.6em;" runat="server"
                        Text="Seen" class="button small orange" OnClick="Btnseenall_Click" />
                    <asp:Button ID="Button19" Style="padding: 0px; font-size: 0.6em;" runat="server"
                        Text="Seen All" class="button small orange" OnClick="Btnseenall1212_Click" />
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="grdcontact" Width="95%" runat="server" CssClass="mGrid" GridLines="None"
                                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False"
                                OnRowCommand="grdcontact_RowCommand" OnRowDataBound="grdcontact_RowDataBound">
                                <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                    <asp:BoundField DataField="Details" HeaderText="Message" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:BoundField DataField="PostedDate" HeaderText="PostedDate" />
                                    <asp:BoundField DataField="Active" HeaderText="Active" />
                                    <asp:TemplateField HeaderText="Empid" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblstatusmsg" runat="server" Text='<%# Eval("Checked") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Image Style="width: 25px; height: 25px;" ID="Image1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdnP" Value='<%# Eval("P") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr"></PagerStyle>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Div1" runat="server">
                    <asp:Button ID="Button10" runat="server" Text="Delete" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="Button11_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button12" runat="server" Text="Active" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="btnactive_Click" />
                    &nbsp;&nbsp;<asp:Button ID="btnhide" runat="server" Text="Hide" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="btnHide_Click" />
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
                            <td>Name
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Subject
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Message
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>P
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>PostDate
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Active
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
                <h2>Message
                    <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                        runat="server" AutoPostBack="True">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button17" Style="padding: 0px; font-size: 0.6em;" runat="server"
                        Text="Seen" class="button small orange" OnClick="Btnseenallmsg_Click" />
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="grdmessage" Width="95%" runat="server" CssClass="mGrid" GridLines="None"
                                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False"
                                OnRowCommand="grdmessage_RowCommand" OnRowDataBound="grdmessage_RowDataBound">
                                <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="Name" HeaderText="From" />
                                    <asp:BoundField DataField="UserName" HeaderText="To" />
                                    <asp:BoundField DataField="Message" HeaderText="Message" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="Active" HeaderText="Active" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:BoundField DataField="P" HeaderText="P" />
                                    <asp:TemplateField HeaderText="Empid" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblstatusmsg" runat="server" Text='<%# Eval("Checked") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Image Style="width: 25px; height: 25px;" ID="Image1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr"></PagerStyle>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Div2" runat="server">
                    <asp:Button ID="Button11" runat="server" Text="Delete" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="Button12_Click" />
                    &nbsp;<asp:Button ID="Button13" runat="server" Text="Active" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="btnactivemsg_Click" />
                </div>
                <div style="width: 330px" id="Message" runat="server">
                    <table>
                        <tr>
                            <td>Id
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>From
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>To
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Message
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Active
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>P
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Insert" class="button small orange"
                                    OnClick="Button4_Click" />
                                <asp:Button ID="Button5" runat="server" Text="Update" class="button small orange"
                                    OnClick="Button5_Click" />
                                <asp:Button ID="Button6" runat="server" Text="Delete" class="button small orange"
                                    OnClick="Button6_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <h2>User
                    <asp:DropDownList ID="DropDownList3" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                        runat="server" AutoPostBack="True">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button18" Style="padding: 0px; font-size: 0.6em;" runat="server"
                        Text="Seen" class="button small orange" OnClick="Btnseenalluser_Click" />
                </h2>
                <table>
                    <tr>
                        <td>
                            <div id="tryit" runat="server" style="width: 100px">
                                <asp:GridView ID="grduser" runat="server" CssClass="mGrid" GridLines="None" PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" OnRowCommand="grduser_RowCommand"
                                    OnRowDataBound="grduser_RowDataBound">
                                    <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSelect" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Id" HeaderText="Id" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" />
                                        <asp:BoundField DataField="Type" HeaderText="Type" />
                                        <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" />
                                        <asp:BoundField DataField="Phone_Number" HeaderText="Ph No" />
                                        <asp:BoundField DataField="City" HeaderText="City" />
                                        <asp:BoundField DataField="EmailAdress" HeaderText="EmailAdress" />
                                        <asp:BoundField DataField="P" HeaderText="P" />
                                        <asp:TemplateField HeaderText="orderStatus" SortExpression="orderStatus">
                                            <ItemTemplate>
                                                <%--<asp:Label ID="LabelInUse" runat="server" Text='<%# Bind("Image_Url") %>' ></asp:Label>--%>
                                                <%--<asp:Image ID="ImageHere" runat="server" ImageUrl='<%# Bind("Image_Url") %>' Visible="false" />--%>
                                                <asp:Image ID="ImageGone" runat="server" ImageUrl='<%# Bind("Image_Url") %>' Visible="true" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="Image_Url" HeaderText="Image" />--%>
                                        <asp:BoundField DataField="Remarks" HeaderText="Country" />
                                        <asp:BoundField DataField="Active" HeaderText="Active"></asp:BoundField>
                                        <asp:TemplateField HeaderText="Empid" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstatusmsg" runat="server" Text='<%# Eval("Checked") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Image Style="width: 25px; height: 25px;" ID="Image1" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                    <PagerStyle CssClass="pgr"></PagerStyle>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Div3" runat="server">
                    <asp:Button ID="Button14" runat="server" Text="Delete" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="Btndeleteuser_Click" />
                    &nbsp;<asp:Button ID="Button15" runat="server" Text="Active" class="button small orange"
                        Style="margin-bottom: 15px;" OnClick="btnactiveUser_Click" />
                </div>
                <div style="width: 330px" id="User" runat="server">
                    <table>
                        <tr>
                            <td>
                            Id
                                <td>
                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td>User Name
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Type
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Create Date
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Phone Number
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>City
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>P
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>ImageUrl
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Active
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Insert" class="button small orange"
                                    OnClick="Button7_Click" />
                                <asp:Button ID="Button8" runat="server" Text="Update" class="button small orange"
                                    OnClick="Button8_Click" />
                                <asp:Button ID="Button9" runat="server" Text="Delete" class="button small orange"
                                    OnClick="Button9_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="display: none">
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="grdlimit" runat="server" CssClass="mGrid" GridLines="None" PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="Remarks" HeaderText="Type" />
                                        <asp:BoundField DataField="Limit" HeaderText="Limit" />
                                        <asp:BoundField DataField="Quentity" HeaderText="Quentity" />
                                        <asp:BoundField DataField="Active" HeaderText="Active" />
                                    </Columns>
                                </asp:GridView>
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
    </div>
</asp:Content>
