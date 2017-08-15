<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ReportsTp.aspx.cs" Inherits="ReportsTp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">   
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([        
          <%=StatusChart %>
        ]);
        var formatter = new google.visualization.NumberFormat({
            prefix: ' '
        });
        formatter.format(data, 1);         
        var options = {
            title: <%=StatusChartTitle %>,
            is3D: true,
            pieSliceText: 'label',
            slices: {  4: {offset: 0.2},
                   
            },
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);   
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="wrapper row3">
        <div id="container">
            <asp:Label ID="lblalert" class="alert-msg warning" runat="server" Visible="false"
                Text="Label">Added Succesfuly<a class="close" href="javascript:void(0)">X</a></asp:Label>
            <div class="clear push50">
                <br />
                <h2>Reports
                </h2>
                <br />
                <table>
                    <tr>
                        <td>Query
                        </td>
                        <td>
                            <asp:TextBox ID="txtsql" runat="server" Text="SELECT *,Case when Amount='0' then '9' else CONVERT(FLOAT,Amount)/Cast(Stock as int) end  AS Rate FROM DailyDetailsTp "
                                Width="637px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="queryclick" class="button small orange" runat="server" Text="Apply"
                                OnClick="queryclick_Click" />
                            <asp:Button ID="btnreport" class="button small orange" runat="server" Text="Expoert"
                                OnClick="Export_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="grdDaily" runat="server" Width="100%" AutoGenerateColumns="False"
                            CssClass="mGrid" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pgr"
                            AlternatingRowStyle-CssClass="alt" OnPageIndexChanging="grdDaily_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="Type" HeaderText="Type" />
                                <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" />
                                <asp:BoundField DataField="Proft_Loss" HeaderText="Status" />
                                <asp:BoundField DataField="CreateDate" HeaderText="Date" />
                                <asp:BoundField DataField="Rate" HeaderText="Rate" />
                            </Columns>
                        </asp:GridView>
                        <br />
                        <div>
                            <table>
                                <tr>
                                    <td>Total Profit &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        RS
                                    </td>
                                </tr>
                                <tr>
                                    <td>Total Loss &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        Rs
                                    </td>
                                </tr>
                                <tr>
                                    <td>Earn &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                        Rs (Hacked -
                                        <asp:Label ID="lblhacked" runat="server" Text="Label"></asp:Label>
                                        , Cheat -
                                        <asp:Label ID="lblcheat" runat="server" Text="Label"></asp:Label>
                                        )
                                    </td>
                                </tr>
                                <tr>
                                    <td></br></br> Won &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        Rs
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lost &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        Rs
                                    </td>
                                </tr>
                                <tr>
                                    <td>Banned &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        Rs
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <br />
                                        Chips Remaining &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        Lakhs
                                    </td>
                                </tr>
                                <tr>
                                    <td></br></br> Total Stock &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        Lakhs
                                    </td>
                                </tr>
                                <tr>
                                    <td>Total Amount &nbsp&nbsp&nbsp
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        Rs
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
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
        <div id="chart_div" style="width: 900px; height: 500px;">
        </div>

    </div>
</asp:Content>

