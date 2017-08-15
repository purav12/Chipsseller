<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PaypalTP.aspx.cs" Inherits="Paypal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function checkValidationPaypal() {
            if (document.getElementById('txtMailpaypal').value.replace(/^\s+|\s+$/g, '') == '') {
                alert('Please enter email address.');
                document.getElementById('txtMailpaypal').focus();
                return false;
            }
            else if (document.getElementById('txtMailpaypal').value.replace(/^\s+|\s+$/g, '') != '' && !checkemail1(document.getElementById('txtMailpaypal').value)) {
                alert('Please enter valid email address.');
                document.getElementById('txtMailpaypal').focus();
                return false;
            }
            else {
                return true;
            }
        }
        var testresults;
        function checkemail1(str) {
            var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{1,6}(?:\.[a-z]{1})?)$/i
            if (filter.test(str))
                testresults = true
            else {
                testresults = false
            }
            return (testresults)
        }

        function checkValidationPaypal1() {
            alert("Paypal Is Temporary Closed Due To Some Maintenance");
            return false;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- content -->
    <div class="wrapper row3">
        <div id="container">
            <div id="Div2" class="clear">
                <section class="clear">

                  <table>
                <tr>
                    <td width="12%" style="font-weight:bold;font-size:larger;">
                  Email Address -
                    </td>
                    <td width="10%">
                        <asp:TextBox style="float:right" ID="txtMailpaypal" runat="server"></asp:TextBox>
                    </td>
                    <td style="float: left;">
                        <span style="font-size: large; float: right; margin-top: 5px;">(Get Mail For Your Order
                            Refrence)</span>
                    </td>
                </tr>
            </table>



        <%--<article >
          <h2 style="width: 370px;">Email Address - <asp:TextBox style="float:right" ID="txtMailpaypal" runat="server"></asp:TextBox> <span style="font-size: large; float: right;margin-top: 5px;">(Get Mail For Your Order Refrence)</span>
          </h2>
          <br />
          </article>--%>
            <div class="clear" style="margin-left: 12%;">

            <%--x=100y+100 / 93.6      y=93.6x -100 / 100--%>
                <!-- #################################################################################################### -->
                <div class="one_fifth first" style="border: 2px solid;">
                    <div class="pricingtable-wrapper">
                        <div class="pricingtable">
                            <div class="pricingtable-title">
                                <h2>
                                    <asp:Label ID="lblname1" runat="server" Text="Label"></asp:Label> CR
                                    </h2>
                            </div>
                            <div class="pricingtable-list">
                                <ul>
                                    <li><asp:Label ID="lblprice1" runat="server" Text="Label"></asp:Label></li>
                                    <li>3.9 % Tax</li>
                                    <li>0.99 USD Charge</li>
                                    <li>2.5 % Exchange</li>
                                </ul>
                            </div>
                            <div class="pricingtable-price">
                                <sup>$</sup><asp:Literal ID="lblcount1" runat="server" Text="Label"></asp:Literal><span>USD</span></div>
                            <div class="pricingtable-signup">
                             <asp:Button ID="btn25m" class="button large gradient orange" OnClientClick="return checkValidationPaypal();" Text="Pay Now" 
                                    runat="server" onclick="btn25m_Click"  />
                             </div>
                        </div>
                    </div>
                </div>
                <!-- #################################################################################################### -->
                <%--<asp:Literal ID="Literal2" runat="server"></asp:Literal>--%>
                <!-- #################################################################################################### -->
                <div class="one_fifth"  style="border: 2px solid;margin-left: 55px;">
                    <div class="pricingtable-wrapper">
                        <div class="pricingtable">
                            <div class="pricingtable-title">
                                <h2>
                                    <asp:Label ID="lblname2" runat="server" Text="Label"></asp:Label> CR </h2>
                            </div>
                            <div class="pricingtable-list">
                                <ul>
                                    <li><asp:Label ID="lblprice2" runat="server" ></asp:Label></li>
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <li>3.9 % Tax</li>
                                    <li>0.99 USD Charge</li>
                                    <li>2.5 % Exchange</li>
                                </ul>
                            </div>
                              <div class="pricingtable-price">
                                <sup>$</sup><asp:Literal ID="lblcount2" runat="server" Text="64"></asp:Literal><span>USD</span></div>

                            <%--<div class="pricingtable-price">
                                <sup>$</sup><asp:Label ID="lblcount2" runat="server" Text="64"></asp:Label><span>USD</span></div>--%>
                            <div class="pricingtable-signup">
                               <asp:Button ID="btn50m" class="button large gradient orange" OnClientClick="return checkValidationPaypal();" Text="Pay Now" 
                                    runat="server" onclick="btn50m_Click"  />
                               </div>
                        </div>
                    </div>
                </div>
                <!-- #################################################################################################### -->
                <!-- #################################################################################################### -->
                <div class="one_fifth" style="border: 2px solid;margin-left: 55px;">
                    <div class="pricingtable-wrapper">
                        <div class="pricingtable">
                            <div class="pricingtable-title">
                                <h2>
                                    <asp:Label ID="lblname3" runat="server" Text="Label"></asp:Label> CR </h2>
                            </div>
                            <div class="pricingtable-list">
                                <ul>
                                    <li><asp:Label ID="lblprice3" runat="server" Text="Label"></asp:Label></li>
                                    <li>3.9 % Tax</li>
                                    <li>0.99 USD Charge</li>
                                    <li>2.5 % Exchange</li>
                                </ul>
                            </div>
                            <div class="pricingtable-price">
                                <sup>$</sup><asp:Literal ID="lblcount3" runat="server" Text="Label"></asp:Literal><span>USD</span></div>
                            <div class="pricingtable-signup">
                               <asp:Button ID="btn100m" class="button large gradient orange" Text="Pay Now" 
                                    runat="server" OnClientClick="return checkValidationPaypal();" onclick="btn100m_Click"  />
                               </div>
                        </div>
                    </div>
                </div>
                <!-- #################################################################################################### -->
                <!-- #################################################################################################### -->
                
                <!-- #################################################################################################### -->
             
                <!-- #################################################################################################### -->
            </div>
          
            <section class="calltoaction opt1 clear" style="margin-top: 60px; border-width: 3px; border-color: rgb(102, 102, 102);" class="calltoaction opt1 clear">
      <div class="three_quarter first">
        <h1>Pay Desire Amount</h1>
      </div>
      <div class="one_quarter"><a href="PaypalDirect.aspx" class="button large gradient orange">Pay Now</a></div>
    </section>
            <!-- ################################################################################################ -->
            <div class="clear">
            </div>
            </div>
        </div>
        <!-- Footer -->
</asp:Content>
