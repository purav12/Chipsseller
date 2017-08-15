<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="Gallery/lib/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="Gallery/source/jquery.fancybox.js?v=2.1.5"></script>
    <link rel="stylesheet" type="text/css" href="Gallery/source/jquery.fancybox.css?v=2.1.5"
        media="screen" />
    <link rel="stylesheet" type="text/css" href="Gallery/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
    <script type="text/javascript" src="Gallery/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
    <script type="text/javascript">
        /*
        *  Button helper. Disable animations, hide close button, change title type and content
        */

        $('.fancybox-buttons').fancybox({
            openEffect: 'none',
            closeEffect: 'none',

            prevEffect: 'none',
            nextEffect: 'none',

            closeBtn: false,

            helpers: {
                title: {
                    type: 'inside'
                },
                buttons: {}
            },

            afterLoad: function () {
                this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper row3">
        <div id="container">
            <!-- ################################################################################################ -->
            <div id="gallery" class="three_quarter first">
                <section>
        <figure>
          <h2>Gallery</h2>
          <ul class="clear">
            <li class="one_third first">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/1_b.jpg"><img src="Gallery/demo/1_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/2_b.jpg"><img src="Gallery/demo/2_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/3_b.jpg"><img src="Gallery/demo/3_s.jpg" alt="" /></a>
            </li>
            <li class="one_third first">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
            <li class="one_third first">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
            <li class="one_third">
            <a class="fancybox-buttons" data-fancybox-group="button" href="Gallery/demo/4_b.jpg"><img src="Gallery/demo/4_s.jpg" alt="" /></a>
            </li>
          </ul>        
        </figure>
      </section>
                <!-- ####################################################################################################### -->
            </div>
            <!-- ################################################################################################ -->
            <div id="sidebar_1" class="sidebar one_quarter">
                <aside>
        <!-- ########################################################################################## -->
        <h2>Contact Details</h2>
        <nav>
          <ul>
            <li><a href="#">Contact Number</a>
              <ul>
                <li><a href="#">+91 7405143466</a></li>
                <li><a href="#">+91 9426462960</a></li>
              </ul>
            </li>
            <li><a href="#">Whats App</a>
              <ul>
                <li><a href="#">+91 9426462960</a></li>
              </ul>
            </li>
            <li><a href="#">Yahoo/MSN</a>
              <ul>
                <li><a href="#">puravmehta1212@yahoo.com</a></li>
              </ul>
            </li>
            <li><a href="#">Faceboock</a>
              <ul>
              <%--<li><a href="https://www.facebook.com/aajspm7"> <img src="images/fb_icon.png" style="height: 53px; width: 53px;" /></a></li>--%>
              <li><a href="https://www.facebook.com/pokerking1212"> <img src="images/fb_icon.png" style="height: 53px; width: 53px;" /></a></li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- /nav -->
        <section style="display:none;">
          <h2>Get In Contact</h2>
          <address>
          Full Name<br>
          Address Line 1<br>
          Address Line 2<br>
          Town/City<br>
          Postcode/Zip<br>
          <br>
          Tel: xxxx xxxx xxxxxx<br>
          Email: <a href="#">contact@domain.com</a>
          </address>
        </section>
        <!-- /section -->
        <section>
          <article  style="display:none;">
            <h2>Lorem ipsum dolor</h2>
            <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
            <ul class="list indent disc">
              <li><a href="#">Lorem ipsum dolor sit</a></li>
              <li>Etiam vel sapien et</li>
              <li><a href="#">Etiam vel sapien et</a></li>
            </ul>
            <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
            <p class="more"><a href="#">Continue Reading &raquo;</a></p>
          </article>
        </section>
        <!-- /section -->
        <!-- ########################################################################################## -->
      </aside>
            </div>
            <!-- ################################################################################################ -->
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
