<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageReq.aspx.cs" Inherits="MessageReq" %>
<%@ Import Namespace="System.Data.SqlClient" %>
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
  <script>      $(function () {
          var pgurl = window.location.href.substr(window.location.href
.lastIndexOf("/") + 1);
          $("#menu ul li a").each(function () {
              if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                  $(this).addClass("active");
          })
      });
</script>

    <div id="container" class="opacity">
    <table align="center"  style="width:100%">
     <tr>
    
        <td colspan="3">
        &nbsp;
            <center><h3>  Blood Request Detail </h3></center>
        </td>
    </tr>

         <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    <table align="center">
    <tr> 
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                AutoGenerateColumns="False">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            <Columns>
             <asp:TemplateField HeaderText="Patient_Name">
                       
                        <ItemTemplate>
                        <%# Eval("PatientName") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>


                         <asp:TemplateField HeaderText="Blood_Group">
                       
                        <ItemTemplate>
                        <%# Eval("BloodGroup") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="State">
                       
                        <ItemTemplate>
                        <%# Eval("State") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="District">
                       
                        <ItemTemplate>
                        <%# Eval("District") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Units_Required">
                       
                        <ItemTemplate>
                        <%# Eval("Unitsrequired") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="When_Required">
                       
                        <ItemTemplate>
                        <%# Eval("WhenReq") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Address">
                       
                        <ItemTemplate>
                        <%# Eval("Address") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Purpose">
                       
                        <ItemTemplate>
                        <%# Eval("Purpose") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                                 <image src='Admin/blood_Req/<%# Eval("Photo") %>' height=100 width=100>
                                 
                        </ItemTemplate>
                        </asp:TemplateField>

                       
            </Columns>
            </asp:GridView>

        </td>
    </tr>
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
      
   
          <div class="response"></div>
        </div>
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