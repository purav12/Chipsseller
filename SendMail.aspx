<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="SendMail.aspx.cs" Inherits="MailTemplates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div class="clear push50">
                <h2>
                    Send Mail
                </h2>
                <div id="Width" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblstatus" Style="color: Red;" Visible="false" runat="server" Text="Mail Sent Successfully"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <%-- <tr>
                            <td>
                              Your  Email
                            </td>
                            <td>
                                <asp:TextBox ID="txtfrommail" runat="server"></asp:TextBox>
                              
                            </td>
                            <td>
                             
                                </td>
                        </tr>--%>
                        <tr>
                            <td>
                                Friend's Email
                            </td>
                            <td>
                                <asp:TextBox ID="txttomail" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject
                            </td>
                            <td>
                                <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
                            </td>
                            <td>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttomail"
                                    ValidationGroup="Submit" ErrorMessage="Please Enter Your Friend's Email"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txttomail"
                                    ErrorMessage="Please Enter Valid Friend's Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ValidationGroup="Submit"></asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsubject"
                                    ValidationGroup="Submit" ErrorMessage="Please Enter Subject"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnsave" Style="display: none;" runat="server" Text="Save Template"
                                    class="button small orange" OnClick="btnsave_Click" />
                                <asp:Button ID="btnSend" runat="server" Text="Send Mail" class="button small orange"
                                    OnClick="btnSend_Click" ValidationGroup="Submit" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
