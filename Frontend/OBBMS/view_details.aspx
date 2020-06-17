<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_details.aspx.cs" Inherits="view_details" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<%@ Import Namespace="System.Data" %>
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
<style>
.active {
	background-color:#D7BDE2;
	}

    </style>
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


    <div>
     <table align="center" style="width:100%">
    
    <tr  align="center" style='background:#FFF'>
    <td style="color:White;font-weight:bold" align="center">
    <br />
    <h1>
        <a href="UserHome.aspx">24x7 Blood Bank</a>
    </td><td><%
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
            string id=Session["idd"].ToString();
            SqlCommand cmd = new SqlCommand("select * from  TblSignUp where Id='" + id.ToString() + "'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Write("<IMAGE SRC='Admin/Sign_up/"+dr[11].ToString()+"' height=70 width=100>");

                Response.Write("<br>" + dr[1]+"&nbsp;"+dr[2]);
            }
            con.Close();
            dr.Close();
            %>
    </h1>
    <br />
    </td>
    </tr>
    </table>
     
<div id="menu" class="menu opacity" style="margin:auto">
    <ul>
      <li><a href="UserHome.aspx">Home</a></li>
      
     
      <li><a href="FindDonars.aspx">Donor</a>

        <ul>
      <li><a href="BloodDonorRegistration.aspx">Registration</a></li>  
       <li><a href="BloodRequest.aspx">Blood Request</a></li>  
      <li><a href="FindDonars.aspx">Find Donors</a>
       <li><a href="BloodDonationCamp.aspx">Camps</a>
        
      </li>
      <li><a href="BloodBankList.aspx">Blood Banks</a></li>
      <li><a href="CheckBloodDonationAvailability.aspx">Check Blood Availability</a>
        </ul>
       <li><a href="BloodBank1.aspx">User</a>
        
        <ul>
      <li><a href="BloodDonationCamp.aspx">Camps</a>
        
      </li>
       <li><a href="BloodBank1.aspx">Blood Donation Requirements</a>
        
      </li>
      <li><a href="BloodBankList.aspx">Blood Banks</a></li>
      <li><a href="CheckBloodDonationAvailability.aspx">Check Blood Availability</a>
       
      </li>
  
        </ul>
        </li>      
      </li>
      <li><a href="BloodBankList.aspx">Blood Banks</a></li>
      
      <li><a href="MessageReq.aspx">Notification</a></li>
      <li><a href="ChangePassword.aspx">Change Password</a></li>
      <li><a href="logout.aspx">Logout</a></li>
    </ul>
    <br style="clear: left">
  </div>
    <script>        $(function () {
            var pgurl = window.location.href.substr(window.location.href
.lastIndexOf("/") + 1);
            $("#menu ul li a").each(function () {
                if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                    $(this).addClass("active");
            })
        });
</script>

     <div id="container" class="opacity">
  

    <table align="center"  width="70%">
     <tr>
    
        <td colspan="3">
        &nbsp;
            <center><h3> Blood Bank Details </h3></center>
        </td>
    </tr>

    <table>
 
    
      
    
    <%
        string ids = Request.QueryString["a"].ToString();
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        string sql = "select * from TblBloodBank where BloodBankId='"+ids.ToString()+"'";
       cmd = new SqlCommand(sql,con);
        con.Open();
         dr = cmd.ExecuteReader();
        Response.Write("<table border='0'  style='border:2px solid black' width='50%' align='center'>");
        if (dr.Read())
        {
            Response.Write("<tr><td>Blood Bank Name</td><td>"+dr[1]+"</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");
            
                       

            Response.Write("<tr><td>Blood Bank Type</td><td>" + dr[12] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");
            
            Response.Write("<tr><td>Hospital Name</td><td>" + dr[2] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");
            
            Response.Write("<tr><td>State</td><td>" + dr[3] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");
            
            Response.Write("<tr><td>District</td><td>" + dr[4] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

            Response.Write("<tr><td>Address</td><td>" + dr[5] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

            Response.Write("<tr><td>Email Address</td><td>" + dr[6] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

            Response.Write("<tr><td>Phone Number</td><td>" + dr[7] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

            Response.Write("<tr><td>Website</td><td>" + dr[8] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

            Response.Write("<tr><td>Fax</td><td>" + dr[9] + "</td></tr>");
            Response.Write("<tr><td colspan='2'><hr/></td></tr>");

          
            
            
        }
        con.Close();
        dr.Close();
        Response.Write("</table>");
         %>
          
       </table>
    
     <div class="footer-top">
    <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Vaibhav Naresh Bhavesh Vijay</a>.</p>
  </div</div>

      <script src="style/js/scripts.js"></script>
    </form>
</body>
</html>