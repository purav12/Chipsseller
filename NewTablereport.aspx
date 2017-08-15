<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    EnableEventValidation="false" CodeFile="NewTablereport.aspx.cs" Inherits="NewTablereport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <h2>
                Directory
                <asp:Label ID="lblcurrent" runat="server"></asp:Label>
           
                
            </h2>
                &nbsp;&nbsp;&nbsp; <asp:Button ID="btndeleteantiindian" runat="server" class="button small orange"
                    Text="Delete Expect India" onclick="btndeleteantiindian_Click" />&nbsp;&nbsp;&nbsp; <asp:Button ID="btnshowcity" runat="server" class="button small orange"
                    Text="Show City" onclick="btnshowcity_Click" /> <asp:Label ID="lbldeletedcount" Text="" style="color:Red;" runat="server"></asp:Label>
            <div class="clear push50">
                <%--<asp:Button ID="btnGetFiles" Text="Get Files From Folder" runat="server" OnClick="btnGetFiles_Click" />--%>
                <asp:GridView ID="gvDetails" Style="width: 100%;" CellPadding="5" runat="server"
                    AutoGenerateColumns="False" OnRowDataBound="gvDetails_RowDataBound" PageSize="30"
                    AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" OnPageIndexChanging="gvDetails_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="FileName" />
                        <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" />
                        <asp:TemplateField HeaderText="Links">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" href='<%# string.Format("NewLogDetails/{0}", Eval("Text")) %>'
                                    Target="_blank" Text='<%# Eval("Text") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <asp:Label ID="lblCountry" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="lblCity" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Links" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblfilename" runat="server" Text='<%# Eval("Text") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comment">
                            <ItemTemplate>
                                <asp:Label ID="lblcomment" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Copy" Visible="false">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtncopy" CommandName="Copy" CommandArgument='<%# Eval("Text") %>'
                                    runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <%--<img src="Images/Delete.jpg" />--%>
                                <%--<asp:ImageButton ID="imgbtndelete"  OnClick="Delete" class="button large black" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("Text") %>'
                                    runat="server" />--%>
                                <asp:Button ID="imgbtndelete" OnClick="Delete" runat="server" class="button small orange"
                                    CommandName="Delete" CommandArgument='<%# Eval("Text") %>' Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <%--<img src="Images/Delete.jpg" />--%>
                                <%--<asp:ImageButton ID="imgbtndelete"  OnClick="Delete" class="button large black" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("Text") %>'
                                    runat="server" />--%>
                                <asp:Button ID="imgbtnedit" OnClick="Edit" runat="server" class="button small orange"
                                    CommandName="Edit" CommandArgument='<%# Eval("Text") %>' Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView1" Style="width: 100%;" CellPadding="5" PageSize="15" AllowPaging="false"
                    CssClass="mGrid" PagerStyle-CssClass="pgr" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="FileName" />
                        <asp:TemplateField HeaderText="Links">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" href='<%# string.Format("PM/{0}", Eval("Text")) %>'
                                    Target="_blank" Text='<%# Eval("Text") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
                </asp:GridView>
                <br />
                <br />
                <br />
                <h2>
                    Downloaders Information&nbsp;&nbsp;&nbsp; Total (<asp:Label ID="lblcount" runat="server"
                        Text="Label"></asp:Label>)&nbsp;&nbsp;
                </h2>
                <asp:Button ID="btnlolamlol" runat="server" Text="Visible" OnClick="btnlolamlol_Click" />
                <asp:GridView ID="GridView2" Style="width: 80%;" CellPadding="5" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Ip" HeaderText="Ip" />
                        <asp:TemplateField HeaderText="Ip Link">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" href='<%# string.Format("http://whatismyipaddress.com/ip/{0}", Eval("Ip")) %>'
                                    Target="_blank" Text='<%# Eval("Ip") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="country" HeaderText="country" />
                        <asp:BoundField DataField="city" HeaderText="city" />
                        <asp:BoundField DataField="comment" HeaderText="comment" />
                        <asp:BoundField DataField="Active" HeaderText="Active" />
                    </Columns>
                    <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
                </asp:GridView>
                <br />
                <asp:TextBox ID="TextBox1" Width="100%" Text="update DownloaderInfo set comment='' , Active = 0 where Ip=''"
                    runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" />
                <br />
                <br />
                <br />
                <h2>
                    Extra&nbsp;&nbsp;&nbsp; Total (<asp:Label ID="lblextracount" runat="server" Text="Label"></asp:Label>)</h2>
                <asp:GridView ID="GridView3" Visible="false" Style="width: 80%;" CellPadding="5"
                    runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Ip" HeaderText="Ip" />
                        <asp:TemplateField HeaderText="Ip Link">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" href='<%# string.Format("http://whatismyipaddress.com/ip/{0}", Eval("Ip")) %>'
                                    Target="_blank" Text='<%# Eval("Ip") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="country" HeaderText="country" />
                        <asp:BoundField DataField="city" HeaderText="city" />
                        <asp:BoundField DataField="comment" HeaderText="comment" />
                        <asp:BoundField DataField="Active" HeaderText="Active" />
                    </Columns>
                    <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
