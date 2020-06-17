<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="../images/Back1.jpg" class="style1">
    <form id="form1" runat="server">
    <table align="center" width='100%'>
    <tr  align="center" style='background:''>
    <td style="color:White;font-weight:bold; background-color: #FFFFFF; background-image: url('../images/item_bg.jpg');" 
            align="center">
 
        <h2 style="font-family: M730-Sans; font-size: xx-large; font-weight: bolder; font-style: italic; text-transform: capitalize; color: #99FF66;" 
            align="center">24x7 Blood Bank</h2>
    </td>
    </tr>
    </table>
    <div id="menu"> 
    <table align="center" style="background:""; height: 35px; width: 100%; font-family: '#44 Font Shadow';" 
            bgcolor="">

    <tr>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="AdminHome.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Home</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="AddBloodBank.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Blood Banks</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="Blood_Detail.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Blood Details</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="Donors.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-size: large; font-family: 'Yu Gothic';" 
            shape="default">Donors</a>
    </td>
     <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="Users.aspx" 
             style="color:#CCFF33; font-weight:bolder; font-size: large; font-family: 'Yu Gothic';" 
             shape="default">Users</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="CampDetail.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Camps</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="Approval.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Approval</a>
    </td>
     <td   
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="ChangePassword.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Change Password</a>
    </td>
    <td 
            
            
            
            style="font-family: 'Boneribbon Bold'; font-size: x-large; font-style: oblique; background-image: url('../images/black.png');" 
            width="1480" height="60" align="center">
    <a href="logout.aspx" 
            style="color:#CCFF33; font-weight:bolder; font-family: 'Yu Gothic'; font-size: large;" 
            shape="default">Logout</a>
    </td>
    </tr>
    </table>
    &nbsp;</div>
   <center><h3 align="center" 
            
            
            
            
            style="font-family: AccoladeShadow; font-size: xx-large; font-weight: bold; font-style: normal; text-transform: uppercase; color: #00CC99; background-image: url('../images/bottom.gif'); background-color: #FFFFFF;">Change Password Here...</h3></center>
    
    <tr>
     <td colspan="3">
        &nbsp;
        </td>
    </tr>
   
    <table width="70%"  cellspacing=0 align="center"  border="0" frame="border" 
        style="background-image: url('../images/back 4.jpg');">
    <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td style="color: #00FFCC; font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal" 
            align="center">
    Old Password
    </td>
    <td>
        <asp:TextBox ID="TxtOld" runat="server" Placeholder="Enter Old Password" 
            TextMode="Password"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Enter your Old Password" ControlToValidate="TxtOld" 
            Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
     <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
    <td style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC" 
             align="center">
    New Password
    </td>
    <td>
        <asp:TextBox ID="TxtNew" runat="server" Placeholder="Enter New Password" 
            TextMode="Password"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please Enter your New Password" ControlToValidate="TxtNew" 
            Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
     <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC" 
            align="center">
    Confirm Password
    </td>
    <td>
        <asp:TextBox ID="TxtCnfrm" runat="server" Placeholder="Re-Enter New Password" 
         TextMode="Password"></asp:TextBox>
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Please Enter your Confirm Password" ControlToValidate="TxtNew" 
            Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
     <td colspan="3">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    <tr>
      <td align="center" colspan="3" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC">
        <asp:Button ID="Button" runat="server" Text="Change Password" 
            onclick="Button_Click" />
    </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    </table>
    </form>
</body>
</html>
