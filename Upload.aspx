<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Upload.aspx.cs" Inherits="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <!-- ################################################################################################ -->
            <div class="clear push50">
                <h2>
                    Download File</h2>
                <!-- ################################################################################################ -->
                <asp:Label ID="lblmsg" Visible="false" class="alert-msg warning" runat="server" Text=""></asp:Label>
                <div class="one_half first">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <asp:Button ID="btnUpload"  class="button small orange"  runat="server" Text="Upload" OnClick="UploadFile" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False"
                            CssClass="mGrid" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pgr"
                            AlternatingRowStyle-CssClass="alt" PageSize="15" EmptyDataText="No files found">
                        <Columns>
                            <asp:BoundField DataField="Text" HeaderText="File Name" />
                            <asp:BoundField DataField="Size" HeaderText="Size" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>'
                                        runat="server" OnClick="DownloadFile"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete"  Text="Delete" CommandArgument='<%# Eval("Value") %>'
                                        runat="server" OnClick="DeleteFile" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <!-- ################################################################################################ -->
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
