<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBloodDonationAvailability.aspx.cs" Inherits="CheckBloodDonationAvailability" %>
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

    </div>
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
  
  
    <table align="center"  width="100%">
     <tr>
    
        <td colspan="3">
        &nbsp;
            <center><h3>Check Blood Group Wise Availability  </h3></center>
        </td>
    </tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    
  
     <tr>
    <td>
    Slect State
    </td>
    <td>
        <asp:DropDownList ID="DropDownSelectstate" runat="server" 
            onselectedindexchanged="DropDownSelectstate_SelectedIndexChanged" 
            AutoPostBack="True" Height="23px" Width="129px"> 
          <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownSelectstate" Display="Dynamic" 
            ErrorMessage="Please Select your State" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>

    <tr>
    <td>
    Select District
    </td>
    <td>
        <asp:DropDownList ID="DropDownSelectDistrict" runat="server" Width="134px" 
            Height="25px" >
        <asp:ListItem>Select District</asp:ListItem>
        </asp:DropDownList>  </td>
      <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownSelectDistrict" Display="Dynamic" 
            ErrorMessage="Please Select your District" ForeColor="Red"></asp:RequiredFieldValidator>
  </td>
    </tr>
      <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td>
    Select Bood Group
    </td>
    <td>
        <asp:DropDownList ID="DropDownBloodGroup" runat="server">
        <asp:ListItem>Select Blood Group</asp:ListItem>
        </asp:DropDownList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="DropDownBloodGroup" Display="Dynamic" 
            ErrorMessage="Plese Select your blood Group" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    
        <td align="center" colspan="3">
        &nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" 
                Height="30px" Width="90px" />
        </td>
    </tr>
   
    <tr>
    
        <td colspan="3">
             &nbsp;</td>
    </tr>
    <tr>
          <td align="center" colspan="3">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
           BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
           CellPadding="3" Width="651px">
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
            <asp:TemplateField HeaderText="Blood_Group">
        
        <ItemTemplate>
        <%# Eval("Blood_Name") %>
        
        </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="No_Of_Units">
        
        <ItemTemplate>
        <%# Eval("No_Of_Bottels") %>
        
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
         <asp:TemplateField HeaderText="Blood_Bank">
        
        <ItemTemplate>
        <%# Eval("Blood_Bank") %>
        
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Expiry_Date">
        
        <ItemTemplate>
        <%# Eval("Expiry_Date") %>
        
        </ItemTemplate>
        </asp:TemplateField>

           </Columns>
       </asp:GridView>
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