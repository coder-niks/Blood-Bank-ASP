<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
       <title></title>
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
    </div>  
       <div id="menu" class="menu opacity" style="margin:auto">
    <ul>
      <li><a href="Index.aspx">Home</a></li>
       
      <li><a href="AdminLogin.aspx">Login</a>
        
      </li>
      
       
      

    </ul>
    <br style="clear: left">
  </div>
   <div id="container" class="opacity">
  
   <div id="showcase" class="showcase">
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/2.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Slider/UH.jpg" alt=""> </div>
        <div class="showcase-caption"></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/Uh1.jpg" alt=""></div>
      </div>
      <div class="showcase-slide">
        <div class="showcase-content"> <img src="../images/cmp.jpg" alt=""> </div>
        <div class="showcase-caption"> </div>
      </div>
    </div>
   
    <table align="center" style="width:89%">
   
     <tr>
    
        <td colspan="3">
        &nbsp;
            <center><h3>  Admin Login </h3></center>
        </td>
    </tr>
<table align="center" 
              
              
              
              style="height: 359px; width: 799px; ">

    
 
<tr>
<td style="font-size: large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #000000;" 
        align="center">
Username
</td>
<td>
    <asp:TextBox ID="TxtUserName" runat="server" placeholder="Enter Username" 
        Height="25px" Width="170px" ></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Enter your Username" 
            ControlToValidate="TxtUserName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    
</td>
</tr>

<td style="font-size: large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #000000;" 
        align="center">
Password
</td>
<td>
    <asp:TextBox ID="Txtpassword" runat="server" placeholder="Enter Password" 
        TextMode="Password" Height="25px" Width="173px" ></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Please Enter your Password" 
            ControlToValidate="Txtpassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    


   
<tr  align="center">
<td colspan="2">
    <asp:Button ID="Button" runat="server" Text="Login" Width="90px"
        onclick="Button_Click" Height="30px" /></td>
</tr>
</table>
    </div>
    

  <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Admin</a>.</p>
  </div>
</div>
    
  </div>  
    
    </center>
  </div>

  <script src="style/js/scripts.js"></script>
    </form>
</body>
</html>
