<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approval.aspx.cs" Inherits="Approval" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1359px;
        }
        .style2
        {
            width: 1269px;
        }
    </style>
</head>
<body background="../images/Back1.jpg" class="style1">
    <form id="form1" runat="server">
      <table align="center" width='100%'>
    <tr  align="center" style='background:''>
    <td style="color:White;font-weight:bold; background-image: url('../images/item_bg.jpg');" 
         
       align="center">
       </td>
       </tr>
 </table>
  
  <div id="Header">
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
            
            
            
            
            style="font-family: AccoladeShadow; font-size: xx-large; font-weight: bold; font-style: normal; text-transform: uppercase; color: #00CC99; background-image: url('../images/bottom.gif'); background-color: #FFFFFF;">
        Accept approval request Here...</h3></center>
    <table align="center">

    <tr>
    <td align="center" class="style2" width="600">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         OnRowDeleting="delete_Data"
          DataKeyNames="Id" 
         AllowPaging="True" AutoGenerateDeleteButton="True"

            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            
            CellPadding="4" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            CellSpacing="2" ForeColor="Black" Width="700px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
            
              <asp:TemplateField HeaderText="Id">
                 
                        <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=' <%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Patient_Name">
                        <ItemTemplate>
                        <%# Eval("PatientName") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Blood_Goup">
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
                          <asp:TemplateField HeaderText="Required_Date">
                        <ItemTemplate>
                        <%# Eval("WhenReq") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Unit">
                        <ItemTemplate>
                        <%# Eval("UnitsRequired") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                        <%# Eval("Email") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                        <%# Eval("Phone") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Hospital_Name">
                        <ItemTemplate>
                        <%# Eval("HospitalName") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                        <%# Eval("Address") %>
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Id_Proof">
                        <ItemTemplate>
                        <%# Eval("ProofDoc") %>
                        </ItemTemplate>
                        </asp:TemplateField>
       
                          <asp:TemplateField HeaderText="Purpose">
                        <ItemTemplate>
                        <%# Eval("Purpose") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                                 <image src='blood_Req/<%# Eval("Photo") %>' height=100 width=100>
                                 
                          </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Approval">
                        <ItemTemplate>
                        <a href="appr.aspx?a=<%# Eval("id") %>">Approval</a>
                        </ItemTemplate>
                        </asp:TemplateField>




            </Columns>
        </asp:GridView>
    </td>
    </tr>
    </table>
        <table>
         <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr> <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
        </table>
     <div id="footer" 
        
        
        style="height:60px;width:1480px;margin:auto;background-image: url('../images/black.png');">
        

            <center style="color: #FFFFFF"><br />
            All right reserved with Admin-2016
                       <br />
            CopyRight 2016-2017
            </center>
    </div>
    </form>
</body>
</html>
