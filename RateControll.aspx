<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="RateControll.aspx.cs" Inherits="RateControll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
        <asp:HyperLink ID="HyperLink2" href="http://chipsseller.com/RateList.aspx" runat="server">Rate List</asp:HyperLink>
            <br />
            <asp:Label ID="lblerror" runat="server" ></asp:Label>
            <br />
            <br />
            <div class="clear push50">
                <h2>
                    Rate
                </h2>                
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="grdRate" runat="server" CssClass="mGrid" GridLines="None" PagerStyle-CssClass="pgr"
                                AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" OnRowCommand="grdRate_RowCommand">
                                <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="Rate_Id" HeaderText="Rate Id"  />
                                    <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                    <asp:BoundField DataField="TableNumber" HeaderText="Table Number" />
                                    <asp:BoundField DataField="SpecialPin" HeaderText="Special Pin" />
                                    <asp:BoundField DataField="RealName" HeaderText="Real Name" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr"></PagerStyle>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Width" runat="server">
                    <table>
                        <tr>
                            <td>
                                Rate Id
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Customer Name
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Table Number
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Special Pin
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Real Name
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Insert" 
                                    class="button small orange" onclick="Button1_Click"/>
                                <asp:Button ID="Button2" runat="server" Text="Update" 
                                    class="button small orange" onclick="Button2_Click"/>
                                <asp:Button ID="Button3" runat="server" Text="Delete" 
                                    class="button small orange" onclick="Button3_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <h2>
                    Rate Controll
                </h2>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="grdRateControll" runat="server" CssClass="mGrid" GridLines="None"
                                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False"
                                OnRowCommand="grdRateControll_RowCommand1">
                                <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="TableId" HeaderText="TableId" />
                                    <asp:BoundField DataField="Rates" HeaderText="Rates" />
                                    <asp:BoundField DataField="TagLine" HeaderText="TagLine" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle CssClass="pgr"></PagerStyle>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div style="width: 330px" id="Hight" runat="server">
                    <table>
                        <tr>
                            <td>
                                Controller Id
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                TableId
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                50 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                100 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                200 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                300 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                400 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                500 Million
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1 Billion
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Tag Line
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox16" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox17" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                                    class="button small orange" onclick="Insert_Click"/>
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                                    class="button small orange" onclick="Update_Click"/>
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                                    class="button small orange" onclick="Delete_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
