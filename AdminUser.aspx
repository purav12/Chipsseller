<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="AdminUser.aspx.cs" Inherits="AdminUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 194px;
        }

        .style2 {
            width: 151px;
        }
    </style>

    <script type="text/javascript">
        function Close() {
            document.getElementById('Label23').style.display = 'none';
            return false;
        }
    </script>
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


    <div class="wrapper row3">

        <div id="container">
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Text="Label">Added Succesfuly<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <asp:Label ID="Label23" Style="display: block;" class="alert-msg warning" runat="server" Text="">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><a class="close" onclick="Close();"
                    href="javascript:void(0)">X</a></asp:Label>
            <h2>Details <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.59375px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(Since 28/6/2013 28 June 2013)</span></h2>
            <div class="clear push50">
                <table>
                    <tr>
                        <td class="style1">Type
                        </td>
                        <td class="style2">
                            <asp:DropDownList ID="drptype" runat="server">
                                <asp:ListItem>Sell</asp:ListItem>
                                <asp:ListItem>Buy</asp:ListItem>
                                <asp:ListItem>Won</asp:ListItem>
                                <asp:ListItem>Banned</asp:ListItem>
                                <asp:ListItem>Lost</asp:ListItem>
                                <asp:ListItem>Hack</asp:ListItem>
                                <asp:ListItem>Cheat</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="style1">Stock(Million)
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtstock" Width="100%" runat="server"></asp:TextBox>
                        </td>
                        <td>Million
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Amount
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtamount" Width="100%" runat="server"></asp:TextBox>
                        </td>
                        <td>INR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtamount"
                                ErrorMessage="Please Enter Amount" ForeColor="Red" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Name
                        </td>
                        <td class="style2">
                            <asp:DropDownList ID="drpName" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
                                DataValueField="Name">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Status
                        </td>
                        <td class="style2">
                            <asp:DropDownList ID="drpprofitlos" runat="server">
                                <asp:ListItem>Profit</asp:ListItem>
                                <asp:ListItem>Loss</asp:ListItem>
                                <asp:ListItem>Won</asp:ListItem>
                                <asp:ListItem>Defeat</asp:ListItem>
                                <asp:ListItem>Banned</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Comment
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtcomment" Width="100%" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>

                    <tr>
                        <td class="style1">Balance
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtbalance" Width="100%" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button7" runat="server" class="button small orange" Text="Get Balance"
                                OnClick="btngetbalance_Click" />

                        </td>
                    </tr>

                    <tr>
                        <td class="style1"></td>
                        <td class="style2">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChipsSellerConnectionString %>"
                                SelectCommand="SELECT * FROM [Customer] ORDER BY NAME ASC"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1"></td>
                        <td class="style2">
                            <asp:Button ID="Button1" runat="server" class="button small orange" Text="Submit"
                                OnClick="Button1_Click" ValidationGroup="Submit" />
                        </td>
                    </tr>
                </table>
                <div style="margin-bottom: 5px">
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- Chips Seller Main Page -->
                    <ins class="adsbygoogle"
                        style="display: block"
                        data-ad-client="ca-pub-1373088425496976"
                        data-ad-slot="3203355847"
                        data-ad-format="auto"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
                <table>
                    <tr>
                        <td class="style1"></td>
                        <td class="style2">
                            <asp:Button ID="btnsee" Style="padding: 0px" class="button small orange" runat="server"
                                Text="Show" OnClick="btnshowclick" />
                            <asp:TextBox ID="txtdesc" Style="margin-top: 10px; margin-bottom: 10px; width: 300px;"
                                Visible="false" runat="server"></asp:TextBox>
                            <asp:Button ID="Button6" Style="padding: 0px" Visible="false" class="button small orange"
                                runat="server" Text="Update" OnClick="btnupdateclick" />
                            <asp:TextBox ID="txtcommentlast" Style="margin-top: 10px; margin-bottom: 10px; width: 200px;"
                                Visible="false" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                </table>
                <br />
                <h2>Sort By
                </h2>
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td class="style1">
                                    <asp:DropDownList ID="drpcust" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    <asp:Button ID="btncust" class="button small orange" runat="server" Text="Get" OnClick="btncust_Click" />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:DropDownList ID="drpbuyselstatus" runat="server">
                                        <asp:ListItem>Sell</asp:ListItem>
                                        <asp:ListItem>Buy</asp:ListItem>
                                        <asp:ListItem>Won</asp:ListItem>
                                        <asp:ListItem>Banned</asp:ListItem>
                                        <asp:ListItem>Lost</asp:ListItem>
                                        <asp:ListItem>Hack</asp:ListItem>
                                        <asp:ListItem>Cheat</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    <asp:Button ID="btnbuysell" class="button small orange" runat="server" Text="Get"
                                        OnClick="btnbuysell_Click" />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:DropDownList ID="drpprftlosstatus" runat="server">
                                        <asp:ListItem>Profit</asp:ListItem>
                                        <asp:ListItem>Loss</asp:ListItem>
                                        <asp:ListItem>Won</asp:ListItem>
                                        <asp:ListItem>Defeat</asp:ListItem>
                                        <asp:ListItem>Banned</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    <asp:Button ID="btnprftlos" class="button small orange" runat="server" Text="Get"
                                        OnClick="btnprftlos_Click" />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:TextBox ID="txtstartdate" Text="6/28/2013" runat="server"></asp:TextBox>
                                    To
                                    <asp:TextBox ID="txtenddate" Text="7/28/2013" runat="server"></asp:TextBox>
                                </td>
                                <td class="style2">
                                    <asp:Button ID="Button2" class="button small orange" runat="server" Text="Get" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="grdDaily" runat="server" Width="100%" AutoGenerateColumns="False"
                            CssClass="mGrid" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pgr"
                            AlternatingRowStyle-CssClass="alt" OnPageIndexChanging="grdDaily_PageIndexChanging"
                            OnRowCommand="grdDaily_RowCommand" PageSize="15">
                            <AlternatingRowStyle CssClass="alt" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="Type" HeaderText="Type" />
                                <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                <asp:BoundField DataField="Proft_Loss" HeaderText="Status" />
                                <asp:BoundField DataField="CreateDate" HeaderText="Date" />
                                <asp:BoundField DataField="Rate" DataFormatString="{0:0.00}" HeaderText="Rate" />
                                <asp:BoundField DataField="Comment" HeaderText="Comment" />
                                <asp:BoundField DataField="CurrentRate" DataFormatString="{0:0.00}" HeaderText="CurrentRate" />
                                <asp:BoundField DataField="Profit" DataFormatString="{0:0.00}" HeaderText="Profit" />
                                <asp:BoundField DataField="Balance" DataFormatString="{0:0.00}" HeaderText="Balance" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <PagerStyle CssClass="pgr" />
                        </asp:GridView>
                        <br />
                        <div style="width: 330px" id="Width" visible="false" runat="server">
                            <table>
                                <tr>
                                    <td>Id
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtid1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Type
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtType1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Stock
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtStock1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Amount
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAmount1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Customer Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCustomerName1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Proft Loss
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtProftLos1s1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>CreateDate
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCreateDate1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rate
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtRate1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Comment
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtComment1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Balance
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtbalance1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button3" runat="server" Text="Insert" class="button small orange"
                                            OnClick="Button11_Click" />
                                        <asp:Button ID="Button4" runat="server" Text="Update" class="button small orange"
                                            OnClick="Button21_Click" />
                                        <asp:Button ID="Button5" runat="server" Text="Delete" class="button small orange"
                                            OnClick="Button31_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="clear push50">
                <div class="tab-wrapper clear">
                    <ul class="tab-nav clear">
                        <li><a href="#tab-12">Proft Loss</a></li>
                        <li><a href="#tab-13">Buy Sell</a></li>
                    </ul>
                    <div class="tab-container">
                        <div id="tab-12" class="tab-content clear">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="grdDaily1" runat="server" CssClass="mGrid" AllowPaging="True" GridLines="None"
                                        PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False">
                                        <AlternatingRowStyle CssClass="alt" />
                                        <Columns>
                                            <asp:BoundField DataField="Proft_Loss" HeaderText="Status" />
                                            <asp:BoundField DataField="Total" HeaderText="Amount" />
                                            <asp:TemplateField HeaderText="Chips">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Chips") %>'></asp:Label>
                                                    &nbsp
                                                    <asp:Label ID="lblmill" runat="server" Text='Million'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="AverageRate" DataFormatString="{0:0.00}" HeaderText="AverageRate" />
                                        </Columns>
                                        <PagerStyle CssClass="pgr" />
                                    </asp:GridView>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div id="tab-13" class="tab-content clear">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="grdbuysell" runat="server" CssClass="mGrid" AllowPaging="True"
                                        GridLines="None" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                        AutoGenerateColumns="False">
                                        <AlternatingRowStyle CssClass="alt" />
                                        <Columns>
                                            <asp:BoundField DataField="Type" HeaderText="Status" />
                                            <asp:BoundField DataField="Total" HeaderText="Amount" />
                                            <asp:TemplateField HeaderText="Chips">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Chips") %>'></asp:Label>
                                                    &nbsp
                                                    <asp:Label ID="lblmill2" runat="server" Text='Million'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="AverageRate" DataFormatString="{0:0.00}" HeaderText="AverageRate" />
                                        </Columns>
                                        <PagerStyle CssClass="pgr" />
                                    </asp:GridView>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear push50">
                <!-- ################################################################################################ -->
                <div class="tab-wrapper clear">
                    <ul class="tab-nav clear">
                        <li><a href="#tab-7">Top Buyers</a></li>
                        <li><a href="#tab-8">Top Sellers</a></li>
                        <li><a href="#tab-9">Top Profitable</a></li>
                    </ul>
                    <div class="tab-container">
                        <!-- Tab Content -->
                        <div id="tab-7" class="tab-content clear">
                            <h2>Top Buyers&nbsp;
                                <asp:DropDownList ID="drpsorting" runat="server">
                                    <asp:ListItem>ASC</asp:ListItem>
                                    <asp:ListItem>DESC</asp:ListItem>
                                </asp:DropDownList>
                            </h2>
                            <p>
                                <asp:GridView ID="grdtopbuyers" runat="server" CssClass="mGrid" GridLines="None"
                                    AlternatingRowStyle-CssClass="alt" AllowSorting="true" AutoGenerateColumns="False"
                                    OnSorting="grdtopbuyers_Sorting">
                                    <Columns>
                                        <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                        <asp:BoundField DataField="TotalChips" HeaderText="Chips (Million)" SortExpression="TotalChips" />
                                        <asp:BoundField DataField="Rate" DataFormatString="{0:0.00}" HeaderText="Rate" SortExpression="Rate" />
                                    </Columns>
                                </asp:GridView>
                            </p>
                        </div>
                        <!-- ## TAB 2 ## -->
                        <div id="tab-8" class="tab-content clear">
                            <h2>Top Sellers</h2>
                            <p>
                                <asp:GridView ID="grdtopsellers" runat="server" CssClass="mGrid" GridLines="None"
                                    AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="TotalChips" HeaderText="Chips (Million)" />
                                        <asp:BoundField DataField="Rate" DataFormatString="{0:0.00}" HeaderText="Rate" />
                                    </Columns>
                                </asp:GridView>
                            </p>
                        </div>
                        <!-- / Tab Content -->
                        <div id="tab-9" class="tab-content clear">
                            <h2>Top Profitable</h2>
                            <p>
                                <asp:GridView ID="grdtopprofitable" runat="server" CssClass="mGrid" GridLines="None"
                                    AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" OnRowDataBound="grdtopprofitable_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="TotalChips" HeaderText="Chips (Million)" />
                                        <asp:BoundField DataField="Rate" DataFormatString="{0:0.00}" HeaderText="Rate" />
                                        <%--<asp:BoundField DataField="Profit" Visible="false" HeaderText="Profit" />--%>
                                        <asp:TemplateField Visible="false" HeaderText="Profit">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProfit" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="RProfit" DataFormatString="{0:0.00}" HeaderText="Real Profit" />
                                    </Columns>
                                </asp:GridView>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- ################################################################################################ -->
            </div>
            <div>
                <table>
                    <tr>
                        <td class="style1">Query
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txtsql" runat="server" Text="SELECT * FROM DailyDetailsTp where CreateDate  BETWEEN '6/28/2013' and '7/28/2013' ORDER BY CreateDate"
                                Width="637px"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:Button ID="queryclick" class="button small orange" runat="server" Text="Apply"
                                OnClick="queryclick_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Table Names
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox1" runat="server" Text="ContactUs,Customer,DailyDetails,IdDetails,Limit,MainLimit,Message,Phishing,Rate,RateController,Static,SubLimit,User"
                                Width="637px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="grdqueryoutput" CssClass="mGrid" GridLines="None" PagerStyle-CssClass="pgr"
                                AlternatingRowStyle-CssClass="alt" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="Type" HeaderText="Type" />
                                    <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                    <asp:BoundField DataField="Proft_Loss" HeaderText="Proft Loss" />
                                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <br />
            <div id="Div1" class="tab-content clear">
                <h2>Static Data</h2>
                <p>
                    <asp:GridView ID="grdsatic" runat="server" CssClass="mGrid" GridLines="None" AlternatingRowStyle-CssClass="alt"
                        AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Data" HeaderText="Data" />
                            <asp:BoundField DataField="P" HeaderText="P" />
                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                        </Columns>
                    </asp:GridView>
                </p>
            </div>
            <br />
            <p>
                Since 28/6/2013 28 June 2013
            </p>
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
</asp:Content>
