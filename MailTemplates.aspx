<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="MailTemplates.aspx.cs" Inherits="MailTemplates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>
                    Mail Template
                </h2>
                <div id="Width" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblstatus" style="color:Red;" Visible="false" runat="server" Text="Message Sent Successfully"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email
                            </td>
                            <td>
                                <asp:TextBox ID="txttomail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject
                            </td>
                            <td>
                                <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Body
                            </td>
                            <td>
                                <CKEditor:CKEditorControl ID="txthome" BasePath="/ckeditor/" runat="server" Height="500"
                                    Width="1000">
                                </CKEditor:CKEditorControl>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnsave" runat="server" Text="Save Template" class="button small orange"
                                    OnClick="btnsave_Click" />
                                <asp:Button ID="btnSend" runat="server" Text="Send Mail" class="button small orange"
                                    OnClick="btnSend_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
