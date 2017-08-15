<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="TempTable.aspx.cs" Inherits="TempTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>
                    Edit Text
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txttext" runat="server" TextMode="MultiLine" style="height:300px" Width="75%"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Width" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Update" class="button small orange"
                                    OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
