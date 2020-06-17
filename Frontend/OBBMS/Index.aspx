<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
	
		</style>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (p) {
            var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
            var mapOptions = {
                center: LatLng,
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            var marker = new google.maps.Marker({
                position: LatLng,
                map: map,
                title: "<div style = 'height:60px;width:200px'><b>Your location:</b><br />Latitude: " + p.coords.latitude + "<br />Longitude: " + p.coords.longitude
            });
            google.maps.event.addListener(marker, "click", function (e) {
                var infoWindow = new google.maps.InfoWindow();
                infoWindow.setContent(marker.title);
                infoWindow.open(map, marker);
            });
        });
    } else {
        alert('Geo Location feature is not supported in this browser.');
    }
</script>
		<script type='text/javascript' src='jquery.js' >
		</script>
		<script type='text/javascript' src='cycle.js' >
		</script>
		<script language="javascript" type="text/javascript">
		    $(document).ready(function () {

		        $('.pics').cycle('zoom');
		       
		    });
        </script>
        <style>
.active {
	background-color:#D7BDE2;
	}

    </style>

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
    <div class="logo opacity"><a href="">
    <img src="" alt=""></a></div>
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
      <li><a href="Index.aspx" id='s'>Home</a></li>
       <li><a href="AboutUs.aspx"  id='s1'>About Us</a>
        
      </li>
      <li><a href="UserLogin.aspx"  id='s1'>Login</a>
        
      </li>
      <li><a href="BloodBank.aspx">Blood Donation Requirements</a>
       
      </li>
     
       
     
      <li><a href="ContactUs.aspx"  id='s1'>Contact Us</a></li>
      
    </ul>
    <br style="clear: left">
  </div>
   <br /><center>
   <script>       $(function () {
           var pgurl = window.location.href.substr(window.location.href
.lastIndexOf("/") + 1);
           $("#menu ul li a").each(function () {
               if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                   $(this).addClass("active");
           })
       });
</script>
   <div id="container" class="opacity">
  
   <div id="showcase" class="showcase">
    <div class="showcase-slide">
        <div class="showcase-content"> <img src="images/Slider/1.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="images/Slider/camp1.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="images/Slider/index1.png" alt=""> </div>
        <div class="showcase-caption"> </div>
      </div>
     
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="images/Slider/camp 6.jpg" alt=""> </div>
        <div class="showcase-caption"></div>

      </div>
    </div>
    <h2>Latest Camp Photos</h2>
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev">Prev</a><a href="#" id="next">Next</a></div>
      <ul>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/New/c1.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/New/c2.jpg" alt=""> </a> </li>
         <li> <a href="#"> <span class="overlay details"></span><img src="style/images/New/c3.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/m.jpg" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/img m (1).JPG" alt=""> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/New/c6.jpg" alt=""> </a> </li>
      </ul>
    </div>

    <div id="footer"><h3>See Your Current Location At a Time In Google Map</h3><br />
<div id="dvMap" style="width:700px; height: 500px">
</div>
<div>
<div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div id="Div1">
      <div class="footer-top"></div>
      <div class="one-fourth">
             <h3> <a href="BloodBank.aspx">Latest Camps</a></h3>
         <ul class="latest-posts">
          <li><span class="date"><em class="day">10</em><em class="month">Jun</em></span> <a href="#">Udaipur, Rajasthan</a> </li>
          <li><span class="date"><em class="day">14</em><em class="month">May</em></span> <a href="#">Akola, Maharashtra </a> </li>
          <li><span class="date"><em class="day">11</em><em class="month">May</em></span> <a href="#">Ambala, Haryana</a> </li>
          <li><span class="date"><em class="day">08</em><em class="month">Apr</em></span> <a href="#">Banka, Bihar</a> </li>
        </ul>
      </div>
      <div class="one-fourth">
 
            <h3> <a href="BloodBank.aspx">Donate Blood</a></h3>
        <ul class="flickr">
           <li><a href="#"><img src="images/f1.gif" alt=""></a></li>
          <li><a href="#"><img src="images/f2.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f3.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f4.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f5.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f6.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f7.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f8.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/f9.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="">
        <h3><a href="AboutUs.aspx">About</a></h3> 
        <p>24x7 Blood Bank Society is a noble charity organization formed with the active initiation and guidance of Lt. Col. (Hon.) Dr. Mohanlal, under Act For Humanity. Act For Humanity is a Non-profit organization founded by Mr. Esahaque Eswaramangalam and a group of young social workers during 2004, with Lt. Col. (Hon.) Dr. Mohanlal as its goodwill ambassador, aiming to fight against terrorism and fanatic activities. Act For Humanity aims to enhance the humanistic elements of each individual and prepare them to be tolerant, responsive, accountable and responsible social citizen.</p>
      </div>
     
      <div class="clear"></div>
    </div>
  </div
</div>
 
  <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Vaibhav Naresh Bhavesh Vijay</a>.</p>
  </div>
</div>
    
  </div>  
    
  <script src="style/js/scripts.js"></script>
  
    </form></div>
</body>
</html>
