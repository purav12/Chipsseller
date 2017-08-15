<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="RateList.aspx.cs" Inherits="RateList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Wrong User Id<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <div id="contact" class="clear">
                <div class="one_half first">
                    <asp:HyperLink ID="HyperLink1" href="http://chipsseller.com" runat="server">Back</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <div id="respond">
                        <h2>
                            Current Rates</h2>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <p>
                            <table>
                                <tr>
                                    <td>
                                        USER ID
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUserId" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnsubmit" class="button small orange" runat="server" Text="Submit"
                                            OnClick="btnsubmit_Click" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId"
                                            ErrorMessage="Enter User Id" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                                            
                                    </td>
                                </tr>
                            </table>
                        </p>
                        <p>
                        <table>
                        <td></td>
                        <td>[Enter Your User Id If You Have Purchased Chips Before]</td>
                        <td></td>
                        </table>
                        </p>
                        
                        <p>
                            <asp:Label ID="lblwelcome" runat="server"></asp:Label>
                        </p>
                        <br />
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        50 Million &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;
                                        <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        100 Million &nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        200 Million &nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        300 Million &nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        400 Million &nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="lbl5" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        500 Million &nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="lbl6" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        1 Billion &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbl7" runat="server" Text="Label"></asp:Label>
                                        INR
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <p>
                            <asp:Label ID="lblTagLine" runat="server" Text="Label"></asp:Label>
                        </p>
                        <br />
                        <br />
                        <br />
                        <p>
                            <div id="useronly" visible="false" runat="server">
                                Your Purchase History (Since 28/6/2013 28 June 2013)
                            </div>
                        </p>
                        <p>
                            <asp:GridView ID="grdDaily" runat="server" Width="100%" AutoGenerateColumns="False"
                                CssClass="mGrid" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pgr"
                                AlternatingRowStyle-CssClass="alt" OnPageIndexChanging="grdDaily_PageIndexChanging"
                                PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="Type" HeaderText="Type" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" />
                                </Columns>
                            </asp:GridView>
                        </p>
                        <br />
                        <p>
                            <asp:GridView ID="grdbuysell" runat="server" CssClass="mGrid" AllowPaging="True"
                                GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                AutoGenerateColumns="False" >
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="Type" HeaderText="Status" />
                                    <asp:BoundField DataField="Total" HeaderText="Amount" />
                                    <asp:TemplateField HeaderText="Chips">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Chips") %>'></asp:Label>
                                            &nbsp
                                            <asp:Label ID="Label2" runat="server" Text='Million'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="AverageRate" HeaderText="AverageRate" />
                                </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                            </asp:GridView>
                        </p>
                    </div>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
