<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PaypalSuccess.aspx.cs" Inherits="PaypalSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <!-- ################################################################################################ -->
            <div id="fof" class="clear">
                <!-- ####################################################################################################### -->
                <div class="clear">
                    <div class="one_half first">
                        <h1>Yay!</h1>
                    </div>
                    <div class="one_half">
                        <h2>Your Order#
                            <asp:Label ID="lblorderNo" runat="server" Text="1234567"></asp:Label>
                            Is SuccessFul !</h2>
                        <h3>You can contact us on <br/> +91 9426462960 <br/> +91 7405143466 <br/> Email: puravmehta1212@yahoo.com 
                            <br/> Or we will contact you on <asp:Label ID="lblemail" runat="server" Text="xyz@asdl.com"></asp:Label>
                            sortly !</h3>
                    </div>
                </div>
                <div class="divider2"></div>
                <%--<p class="notice">For Some Reason The Page You Requested Could Not Be Found On Our Server</p>--%>
                <p class="clear"><a class="fl_left" href="javascript:history.go(-1)">&laquo; Go Back</a> <a class="fl_right" href="Default.aspx">Go Home &raquo;</a></p>
                <!-- ####################################################################################################### -->
            </div>
            <!-- ################################################################################################ -->
            <div class="clear"></div>
        </div>
    </div>
</asp:Content>

