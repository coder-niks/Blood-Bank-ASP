<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BloodDonorRegistration.aspx.cs" Inherits="BloodDonorRegistration" %>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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

    
    <table align="center">
            <tr>
    
        <td colspan="3">
        &nbsp;<center> <h3>Blood Donor Registration</h3></center>
        </td>
    </tr>
    <tr>
    <td>
    Donor Name
    </td>
    <td>
        <asp:TextBox ID="TxtDnrName" runat="server" placeholder="Enter Donor Name"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TxtDnrName" Display="Dynamic" 
            ErrorMessage="Please Enter your Donar Name" ForeColor="Red"></asp:RequiredFieldValidator>
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
        Donor Photo
        </td>
        <td>
            <asp:FileUpload ID="FileUploadDonor" runat="server" />
        </td>
        <td>
            <asp:Image ID="ImageDonor" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="FileUploadDonor" Display="Dynamic" 
            ErrorMessage="Please Upload  your Photo" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style3">
    Email
    </td>
    <td class="style3">
        <asp:TextBox ID="TxtEmail" runat="server" placeholder="Enter E-mail Address" 
            TextMode="Email"></asp:TextBox>
        <td class="style3">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="TxtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter your Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TxtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter Valid Email Address" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </td>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    </tr>
    <tr>
    <td>
    Phone
    </td>
    <td>
        <asp:TextBox ID="TxtPhone" runat="server" placeholder="Enter Your Phone Number" 
            TextMode="Phone" MaxLength="10"></asp:TextBox>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ControlToValidate="TxtPhone" Display="Dynamic" 
            ErrorMessage="Please Enter your Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
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
    Select
       State
    </td>
    <td>
        <asp:DropDownList ID="DropDownState" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownState_SelectedIndexChanged" Height="27px">
                     <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="DropDownState" Display="Dynamic" 
            ErrorMessage="Please Select your State" ForeColor="Red"></asp:RequiredFieldValidator>
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
    District
    </td>
    <td>
        <asp:DropDownList ID="DropDownDistrict" runat="server" Height="25px" 
            Width="124px">
                 <asp:ListItem>Select District</asp:ListItem>
        </asp:DropDownList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="DropDownDistrict" Display="Dynamic" 
            ErrorMessage="Please Select your District" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TxtAddress" Display="Dynamic" 
            ErrorMessage="Plese Enter Your Address" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:FileUpload ID="FileUploadProof" runat="server" />
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Upload your ID & Address Proof Document" ControlToValidate="FileUploadProof" 
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
    Blood Group
    </td>
    <td>
        <asp:DropDownList ID="DropDownBloodGroup" runat="server">
        </asp:DropDownList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="DropDownBloodGroup" Display="Dynamic" 
            ErrorMessage="Please Enter Your Blood Group" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
        <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style2">
    Gender
    </td>
    <td class="style2">
        <asp:DropDownList ID="DropDownGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="DropDownBloodGroup" Display="Dynamic" 
            ErrorMessage="Please Select your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
        <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style1">
    Date Of Birth
    </td>
    <td>
        <asp:TextBox ID="TxtDOB" runat="server" placeholder="Select Date Of Birth" 
            TextMode="Date" Width="253px"></asp:TextBox>
      
    </td>
    <td class="style1">
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="TxtDnrName" Display="Dynamic" 
            ErrorMessage="Please Select your Date Of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
        <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style1">
    Previous Blood Donation Date
    </td>
    <td class="style1">
        <asp:TextBox ID="TxtPreBlodDonDte" runat="server" 
            placeholder="Select your Previous Blood Donation Date" Width="253px" 
            TextMode="Date"></asp:TextBox>
     
    </td>
    <td class="style1">
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="TxtDnrName" Display="Dynamic" 
            ErrorMessage="Please Select your Last Blood Donation Date" ForeColor="Red"></asp:RequiredFieldValidator>
    
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
    I Agree all  Terms & Conditions
    </td>
    <td>
        <asp:DropDownList ID="DropDownTerm" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownTerm" Display="Dynamic" 
            ErrorMessage="Please Select your Tems and Conditions" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr >
  <td align="center" colspan="3">

    
        <asp:Button ID="BtnRegiater" runat="server" Text="Register" 
            onclick="BtnRegiater_Click" />
       <br />
                <asp:Label ID="Label1" runat="server" ForeColor="#FF5050"></asp:Label>

    </td>
    </tr>
        <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    </table>
    
     <div class="footer-top">
    <div id="copyright" class="opacity">
    <p>Copyright at V.B.P.C. All rights reserved 2016-17 // Design by <a href="">Vaibhav Naresh Bhavesh Vijay</a>.</p>
  </div</div>

      <script src="style/js/scripts.js"></script>
    </form>
</body>
</html>
