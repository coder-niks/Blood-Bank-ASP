<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Admin_SignUp" %>

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
    <script>
    $.noConflict();
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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
         <div>
    <div id="thumbs"> <a href="style/images/art/bg1.jpg"></a> <a href="style/images/art/bg2.jpg"></a> <a href="style/images/art/bg3.jpg"></a> <a href="style/images/art/bg4.jpg"></a> <a href="style/images/art/bg5.jpg"></a> <a href="style/images/art/bg6.jpg"></a> </div>


    <div>
     <table align="center" style="width:100%">
    
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

    
    <div id="container" class="opacity">
  

    <table align="center"  width="70%">
     <tr>
    
        <td colspan="3">
        &nbsp;
            <center><h3> Sign Up </h3></center>
        </td>
    </tr>
    <table align="center">
  
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td>
    First Name
    </td>
    <td>
        <asp:TextBox ID="TxtFrstName" runat="server" placeholder="Enter First Name"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Enter your First Name" ControlToValidate="TxtFrstName" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Last Name
    </td>
    <td>
        <asp:TextBox ID="TxtLstName" runat="server" placeholder="Enter Last Name"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please Enter your Last Name" ControlToValidate="TxtLstName" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Username
    </td>
    <td>
        <asp:TextBox ID="TxtUsrName" runat="server" placeholder="Enter Username"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Please Enter your Username" ControlToValidate="TxtUsrName" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    <tr>
    <td>
    Photo
    </td>
    <td>
        <asp:FileUpload ID="FileUploadPhoto" runat="server" />
    </td>
    <td>
        <asp:Image ID="ImageSignUp" runat="server" />
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Please Upload your Photo" ControlToValidate="FileUploadPhoto" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Password
    </td>
    <td>
        <asp:TextBox ID="TxtPswrd" runat="server" placeholder="Enter Password" 
            TextMode="Password"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Please Enter your Password" ControlToValidate="TxtPswrd" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Confirm Password
    </td>
    <td>
        <asp:TextBox ID="TxtCnfrmPswrd" runat="server" 
            placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Please Enter your Confirm Password" 
            ControlToValidate="TxtCnfrmPswrd" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TxtPswrd" ControlToValidate="TxtCnfrmPswrd" Display="Dynamic" 
                ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Email
    </td>
    <td>
        <asp:TextBox ID="TxtEmail" runat="server" placeholder="Enter E-mail Address" 
            TextMode="Email"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Please Enter your Email Address" ControlToValidate="TxtEmail" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TxtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter Correct Email Address" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
   Phone
    </td>
    <td>
        <asp:TextBox ID="TxtPhone" runat="server" placeholder="Enter Phone Number" 
            TextMode="Phone" MaxLength="10"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Please Enter your   Phone Number" ControlToValidate="TxtPhone" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Address
    </td>
    <td>
        <asp:TextBox ID="TxtAddress" runat="server" placeholder="Enter Address" 
            TextMode="MultiLine"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Please Enter your Address" ControlToValidate="TxtAddress" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td>
    ID &amp; Adreess Proof
    </td>
    <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ErrorMessage="Please Upload your ID & Address Proof Document" ControlToValidate="FileUpload1" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
     <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Gender
    </td>
    <td>
        <asp:DropDownList ID="DropDownGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Please Select Gender" ControlToValidate="DropDownGender" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td>
    Date Of Birth
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Select date Of Birth" 
            TextMode="Date"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="Please Select your DOB" ForeColor="Red"></asp:RequiredFieldValidator>
         </td>
    </tr>
     <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
           <tr>
    
        <td colspan="3">
        &nbsp;
        <ul>
<h2><li>Terms & Conditions:-</li></h2>
<li>You are between age group of 18 to 60 years.</li>
<li>Your weight is 45 kg or more.</li>
<li>Your hemoglobin is 12.5 % minimum.</li>
<li>Your last donation was 3 months earlier.</li>
<li>You are healthy and have not suffered from dieses in the recent past.</li>
<li>I fill all the Information are Correct.</li>
</ul>
        </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td>
    I Agree All Terms & Conditions
    </td>
    <td>
        <asp:DropDownList ID="DropDownTerm" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="DropDownTerm" Display="Dynamic" 
            ErrorMessage="Please Select your Tems and Conditions" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    
    
 
  <td align="center" colspan="3">
    
        <asp:Button ID="TxtSignUp" runat="server" Text="Sign Up" 
            onclick="TxtSignUp_Click" />
    <br />
                <asp:Label ID="Label1" runat="server" ForeColor="#FF5050"></asp:Label>

    </td></tr></tr></table>
 </table>
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
  </div></form>
<script src="style/js/scripts.js"></script>
</body>
</html>