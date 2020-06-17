<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

		<script type='text/javascript' src='jquery.js' >
		</script>
		<script type='text/javascript' src='cycle.js' >
		</script>
		<script language="javascript" type="text/javascript">
		    $(document).ready(function () {

		        $('.pics').cycle('zoom');

		    });
        </script>
        <link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png">
<link rel="stylesheet" type="text/css" href="style/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="style/color/red.css" media="all">
<link rel="stylesheet" type="text/css" media="screen" href="style/css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="style/type/museo.css" media="all">
<link rel="stylesheet" type="text/css" href="style/type/ptsans.css" media="all">
<link rel="stylesheet" type="text/css" href="style/type/charis.css" media="all">
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="style/css/ie7.css" media="all">
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="style/css/ie8.css" media="all">
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="style/css/ie9.css" media="all">
<![endif]-->
<script src="style/js/jquery-1.6.2.min.js"></script>
<script src="style/js/ddsmoothmenu.js"></script>
<script src="style/js/transify.js"></script>
<script src="style/js/jquery.aw-showcase.js"></script>
<script src="style/js/jquery.jcarousel.js"></script>
<script src="style/js/carousel.js"></script>
<script src="style/js/jquery.prettyPhoto.js"></script>
<script src="style/js/jquery.superbgimage.min.js"></script>
<script src="style/js/jquery.slickforms.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $('.forms').dcSlickForms();
    });
</script>
<script>
    $(document).ready(function () {
        $("#showcase").awShowcase({
            content_width: 900,
            content_height: 400,
            auto: true,
            interval: 3000,
            continuous: false,
            arrows: true,
            buttons: true,
            btn_numbers: true,
            keybord_keys: true,
            mousetrace: false,
            /* Trace x and y coordinates for the mouse */
            pauseonover: true,
            stoponclick: false,
            transition: 'fade',
            /* hslide/vslide/fade */
            transition_delay: 0,
            transition_speed: 500,
            show_caption: 'onload'
            /* onload/onhover/show */
        });
    });
</script>
</head>
<body>

<div id="wrapper">
  <div id="header">
    <div class="logo opacity"><a href=""><img src="" alt=""></a></div>
    <div class="social">
      <ul>
        <li><a href="#"><img src="style/images/icon-rss.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-facebook.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-twitter.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-googleplus.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-dribble.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-flickr.png" alt=""></a></li>
        <li><a href="#"><img src="style/images/icon-tumblr.png" alt=""></a></li>
      </ul>
    </div>
  </div>
    <form id="form1" runat="server">
     <div>
    <div id="thumbs"> <a href="style/images/art/bg1.jpg"></a> <a href="style/images/art/bg2.jpg"></a> <a href="style/images/art/bg3.jpg"></a> <a href="style/images/art/bg4.jpg"></a> <a href="style/images/art/bg5.jpg"></a> <a href="style/images/art/bg6.jpg"></a> </div>

     <table align="center"  style="width:100%">
    
    <tr  align="center" style='background:#FFF'>
    <td style="color:White;font-weight:bold" align="center">
    <br />
    <h1>
        <a href="Index.aspx">24x7 Blood Bank</a>
    </h1>
    <br />
    </td>
    </tr>
    </table>
    
     <div id="menu" class="menu opacity" style="margin:auto">
    <ul>
      <li><a href="Index.aspx">Home</a></li>
       
        
 
      <li><a href="AdminLogin.aspx">Login</a>
        
      </li>
      
       
     
    </ul>
    <br style="clear: left">
  </div>
   <br /><center>
   <div id="container" class="opacity">
   <div id="showcase" class="showcase">
       <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/1.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/blood donation 2.JPG" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/UH.jpg" alt=""> </div>
        <div class="showcase-caption"></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Uh1.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/blood donation 1.JPG" alt=""> </div>
        <div class="showcase-caption"></div>
      </div>
      </div>
      <br />
       <h2>Latest Camps</h2><br />
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev">Prev</a><a href="#" id="next">Next</a></div>
      <ul>
        <li> <a href="#"> <span class="overlay details"></span><img src="../style/images/New/c1.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="../style/images/New/c2.jpg" alt=""> </a> </li>
         <li> <a href="#"> <span class="overlay details"></span><img src="../style/images/New/c3.jpg" alt=""> </a> </li>
     <li> <a href="#"> <span class="overlay details"></span><img src="../images/qq.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="../images/donate.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="../images/don 3.jpg" alt=""> </a> </li>
      </ul>
     
    </div><br /><br />
     <div class="clear"></div>
    <div id="Div1">
      <div class="footer-top"></div>
      <div class="one-fourth">
        <h3>Latest Posts</h3>
        <ul class="latest-posts">
          <li><span class="date"><em class="day">22</em><em class="month">Jun</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
          <li><span class="date"><em class="day">14</em><em class="month">May</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
          <li><span class="date"><em class="day">11</em><em class="month">May</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
          <li><span class="date"><em class="day">08</em><em class="month">Apr</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
        </ul>
      </div>
      <div class="one-fourth">
        <h3>Flickr</h3>
        <ul class="flickr">
          <li><a href="#"><img src="style/images/art/f1.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f2.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f3.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f4.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f5.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f6.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f7.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f8.jpg" alt=""></a></li>
          <li><a href="#"><img src="style/images/art/f9.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="one-fourth">
        <h3>About</h3>
        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor.</p>
        <br>
        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
      </div>
      

      <div class="clear"></div>
    </div>
  </div>
      
   
  <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Vaibhav Naresh Bhavesh Vijay</a>.</p>
  </div>
</div>
    
  </div>  
    
   
  <script src="style/js/scripts.js"></script>
    </form>
</body>
</html>

     
