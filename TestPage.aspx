<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="TestPage.aspx.cs" Inherits="TestPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://chrome.google.com/webstore/detail/fnmahgkkkbneafgnndnbbjbjecbnahde" rel="chrome-webstore-item"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <div id="contact" class="clear">
                <table>
                    <tr>
                        <td>
                        <a href="chrome.webstore.install()">Add to Chrome</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <button onclick="chrome.webstore.install()" id="install-button" 
                        style="width: 362px; height: 45px; background: green;">
                        Add our Table Finder to Google Chrome
                        </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <a href="javascript:chrome.webstore.install()">Add to Chrome</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" OnClientClick="chrome.webstore.install()" runat="server" Text="Button" />
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <%--<asp:Button ID="Button2" runat="server" OnClick="chrome.webstore.install()" Text="Button" />--%>
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>
    </div>
</asp:Content>
