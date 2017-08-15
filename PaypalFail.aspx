<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PaypalFail.aspx.cs" Inherits="PaypalFail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="wrapper row3">
  <div id="container">
    <!-- ################################################################################################ -->
    <div id="fof" class="clear">
      <!-- ####################################################################################################### -->
      <div class="clear">
        <div class="one_half first">
          <h1>Fail</h1>
        </div>
        <div class="one_half">
          <h2>Your Order has been Failled For Some Reason !</h2>
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

