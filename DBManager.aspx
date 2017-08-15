<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" EnableEventValidation="false"
    CodeFile="DBManager.aspx.cs" Inherits="DBManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>Export DataBase
                </h2>
                <div id="Width" runat="server">
                    <table>
                        <tr>
                            <td class="style1">Table Names
                            </td>
                            <td>
                                <asp:CheckBoxList ID="chktablenames" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chktablenames_SelectedIndexChanged"
                                    RepeatDirection="Horizontal">
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">Column Names
                            </td>
                            <td>
                                <asp:TextBox ID="txtColumnname" runat="server" Width="1000px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">Query
                            </td>
                            <td>
                                <asp:TextBox ID="txtQuery" runat="server" Width="1000px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">File Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnshow" runat="server" Text="Show" class="button small orange" OnClick="btnshow_Click" />
                                <asp:Button ID="btnExport" runat="server" Text="Export" class="button small orange"
                                    OnClick="btnExport_Click" />
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="grdtempgrid" runat="server">
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
