<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <meta charset="UTF-8">
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
<script src="style/js/jquery.prettyPhoto.js"></script>
<script src="style/js/jquery.superbgimage.min.js"></script>
<script src="style/js/jquery.slickforms.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $('.forms').dcSlickForms();
    });
</script>
<style>
.active {
	background-color:#D7BDE2;
	}

    </style>
</head>
<body>
<div id="thumbs"> <a href="style/images/art/bg1.jpg"></a> <a href="style/images/art/bg2.jpg"></a> <a href="style/images/art/bg3.jpg"></a> <a href="style/images/art/bg4.jpg"></a> <a href="style/images/art/bg5.jpg"></a> <a href="style/images/art/bg6.jpg"></a> </div>

<div id="superbgimage">
  <div class="scanlines"></div>
</div>
<div id="wrapper">
  <div id="header">
   
    <div class="logo"><a href="" ><img src=""  alt=""></a></div>
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
   <table align="center"  style="width:100%">
    
    
    <tr  align="center" style='background:#FFF'>
    <td style="color:White;font-weight:bold" align="center">
    <br />
    <h1>
        <a href="Index.aspx" <img src="images/logo w.png">24x7 Blood Bank</a>
    </h1>
    <br />
    </td>
    </tr>
    </table>
  <div class="clear"></div>
  <div id="menu" class="menu opacity" style="margin:auto">
    <ul>
      <li><a href="Index.aspx">Home</a></li>
       <li><a href="AboutUs.aspx">About Us</a>
        
      </li>
      <li><a href="UserLogin.aspx">Login</a>
        
      </li>
      <li><a href="BloodBank.aspx">Blood Donation Requirements</a>
       
      </li>
     
       
     
      <li><a href="ContactUs.aspx">Contact Us</a></li>
    </ul>
    <br style="clear: left">
  </div>
        <script>            $(function () {
                var pgurl = window.location.href.substr(window.location.href
.lastIndexOf("/") + 1);
                $("#menu ul li a").each(function () {
                    if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                        $(this).addClass("active");
                })
            });
</script>
  <div id="container" class="opacity">
    <div class="full-width">
      <div class="one-third"><img src="images/don.jpg" alt=""></div>
      <div class="two-third last">
        <h2>About Us</h2>
      
<p>24x7 Blood Bank Society is a noble charity organization formed with the active initiation and guidance of Lt. Col. (Hon.) Dr. Mohanlal, under Act For Humanity. Act For Humanity is a Non-profit organization founded by Mr. Esahaque Eswaramangalam and a group of young social workers during 2004, with Lt. Col. (Hon.) Dr. Mohanlal as its goodwill ambassador, aiming to fight against terrorism and fanatic activities. Act For Humanity aims to enhance the humanistic elements of each individual and prepare them to be tolerant, responsive, accountable and responsible social citizen.</p>
        <br>
        <p>24x7 Blood Bank is aimed at promoting the awareness of blood donation among the public. It is committed to stay ahead of all linguistic-rational-religious-political differences and shall be fully focusing its objectives in health care activities, with technology support from WebCastle Media Pvt. Ltd., Udaipur.</p>
        <br>
        <p>24x7 Blood Bank Society is registered as per The TCLSCS Registration Act XII of 1955 under the Government of Rajasthan. Initial operation of 24x7 Blood Bank shall be limited to Kerala and in the coming years its services shall be available all over India.</p>
        <br>
        <br>
       
      </div>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div id="footer">
      <div class="footer-top"></div>
      <div class="one-fourth">
        <h3>Latest Camps</h3>
        <ul class="latest-posts">
          <li><span class="date"><em class="day">10</em><em class="month">Jun</em></span> <a href="#">Udaipur, Rajasthan</a> </li>
          <li><span class="date"><em class="day">14</em><em class="month">May</em></span> <a href="#">Akola, Maharashtra </a> </li>
          <li><span class="date"><em class="day">11</em><em class="month">May</em></span> <a href="#">Ambala, Haryana</a> </li>
          <li><span class="date"><em class="day">08</em><em class="month">Apr</em></span> <a href="#">Banka, Bihar</a> </li>
        </ul>
      </div>
      <div class="one-fourth">
        <h3>Donate Blood</h3>
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
        <h3>About</h3>
        <p>24x7 Blood Bank Society is a noble charity organization formed with the active initiation and guidance of Lt. Col. (Hon.) Dr. Mohanlal, under Act For Humanity. Act For Humanity is a Non-profit organization founded by Mr. Esahaque Eswaramangalam and a group of young social workers during 2004, with Lt. Col. (Hon.) Dr. Mohanlal as its goodwill ambassador, aiming to fight against terrorism and fanatic activities. Act For Humanity aims to enhance the humanistic elements of each individual and prepare them to be tolerant, responsive, accountable and responsible social citizen.</p>
      </div>
      
      <div class="clear"></div>
    </div>
  </div>
  <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Vaibhav Naresh Bhavesh Vijay</a>.</p>
  </div>
<script src="style/js/scripts.js"></script>
</body>
</html>