<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="PaypalOrder.aspx.cs" Inherits="PaypalOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <asp:HyperLink ID="HyperLink1" href="http://chipsseller.com" runat="server">Back</asp:HyperLink>
            <br />
            <br />
            <br />
            <div class="clear push50">
                <h2>
                    PayPal Order List
                </h2>
                <div align="center">
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="mGrid"
                                     GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" OnRowCommand="GridView2_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id"  />
                                        <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                        <asp:BoundField DataField="IsSeen" HeaderText="IsSeen" />
                                        <asp:BoundField DataField="Active" HeaderText="Active" />
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <div id="adminspecial" style="width: 500px" align="center" runat="server">
                    <table>
                        <tr>
                            <td>
                                Id
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Stock
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                IsSeen
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Active
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Button ID="btndelete" runat="server" class="button small orange" Text="Delete"
                                    OnClick="btndelete_Click" />
                            </td>
                            <td>
                                <br />
                                <asp:Button ID="btnupdate" runat="server" class="button small orange" Text="Seen All"
                                    OnClick="btnupdate_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
