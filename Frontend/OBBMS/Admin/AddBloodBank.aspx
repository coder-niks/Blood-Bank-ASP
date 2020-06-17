<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBloodBank.aspx.cs" Inherits="Admin_AddBloodBank" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            height: 30px;
        }
        .style3
        {
            width: 214px;
            margin-left: 40px;
        }
        tr
        {
            text-align:center;
        }
    </style>
</head>
<body background="../images/Back1.jpg" class="style1">
<div id="Header">
    <table align="center" width='100%'>
    <tr  align="center" style='background:''>
  
    </tr>
    </table>
  <div id="Div1">
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

    
    <form id="form1" runat="server">
    <center><h3 align="center" 
            
            
            
            
            style="font-family: AccoladeShadow; font-size: xx-large; font-weight: bold; font-style: normal; text-transform: uppercase; color: #00CC99; background-image: url('../images/bottom.gif'); background-color: #FFFFFF;">Add Blood Bank Here...</h3></center>
    
    <table width="70%"  cellspacing=0 align="center"  border="0" frame="border" 
        style="background-image: url('../images/back 4.jpg');">
   
    <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    <td class="style1" colspan="1" 
            
            
            
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Blood Bank Name
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TxtBloodBankName" runat="server" 
            placeholder="Enter Blood Bank Name" Height="25px" Width="253px"></asp:TextBox>
        </td>    
       <td class="style1" width='30%' height="25"> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Enter Blood Bank Name" 
            ControlToValidate="TxtBloodBankName" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
   

    
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>
    <tr>
   <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">

    Blood Bank Type
    </td>
    <td>
        <asp:DropDownList ID="DropDownType" runat="server" Height="25px" Width="253px">
                     <asp:ListItem>Select Blood Bank</asp:ListItem>
            <asp:ListItem>Govt. Sector </asp:ListItem>
            <asp:ListItem>GOVERNMENT</asp:ListItem>
            <asp:ListItem>TRUST</asp:ListItem>
            <asp:ListItem>PRIVATE</asp:ListItem>
            <asp:ListItem>IRCS</asp:ListItem>
            <asp:ListItem>Charitable</asp:ListItem>
            <asp:ListItem>Voluntary</asp:ListItem>
            <asp:ListItem>Autonomous</asp:ListItem>
            <asp:ListItem>Government Aided</asp:ListItem>
            <asp:ListItem>Municipal</asp:ListItem>
                     
        </asp:DropDownList>
    </td>
    <td>
    
           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="DropDownType" Display="Dynamic" 
            ErrorMessage="Please Select Blood Bank Type" ForeColor="White"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
     <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>
    
    
    <tr><td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Hospital Name
    </td><td>
        <asp:TextBox ID="TxtHospitalName" runat="server" placeholder="Enter Hospital Name" 
                Height="25px" Width="253px"></asp:TextBox>
      
      </td>
           <td class="style3">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TxtHospitalName" Display="Dynamic" 
                ErrorMessage="Please Enter Hospital Name" ForeColor="White"></asp:RequiredFieldValidator>
   </td>  </tr>
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    State
    </td>
    <td>
        <asp:DropDownList ID="DropDownState" runat="server"  AutoPostBack="True" 
            onselectedindexchanged="DropDownState_SelectedIndexChanged" Height="25px" 
            Width="253px">
               <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList></td>
       <td class="style3"> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownState" Display="Dynamic" 
            ErrorMessage="Please Select Blood Bank State" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    District
    </td>
   <td>
       <asp:DropDownList ID="DropDownDistrict" runat="server" Height="25px" 
           Width="253px">   <asp:ListItem>Select District</asp:ListItem>
       </asp:DropDownList></td>
      <td class="style3"> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="DropDownDistrict" Display="Dynamic" 
           ErrorMessage="Please Select Blood Bank District" ForeColor="White"></asp:RequiredFieldValidator>
          </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Address
    </td>
    <td>
        <asp:TextBox ID="TxtAddress" runat="server" placeholder="Enter Blood Bank Address" 
            TextMode="MultiLine" Height="50px" Width="253px"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TxtAddress" Display="Dynamic" 
            ErrorMessage="Please Enter Blood Bank Address" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Email
    </td>
    <td>
    <asp:TextBox ID="TxtEmail" runat="server" placeholder="Enter Blood Bank Email"
    TextMode="Email" Height="25px" Width="253px"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TxtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter Blood Bank Email Address" ForeColor="White"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TxtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter Valid Email Address" ForeColor="White" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Phone
    </td>
    <td>
        <asp:TextBox ID="TxtPhone" runat="server" placeholder="Enter Blood Bank Phone No." 
            TextMode="Phone" MaxLength="10" Height="25px" Width="253px"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TxtPhone" Display="Dynamic" 
            ErrorMessage="Please Enter Blood Bank Phone Number" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Website
    </td>
    <td>
    <asp:TextBox ID="TxtWebsite" runat="server" placeholder="Enter Blood Bank Website" 
            Height="25px" Width="253px"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TxtWebsite" Display="Dynamic" 
            ErrorMessage="Please Enter Blood bank website" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">
    Fax
    </td><td class="style2">
    <asp:TextBox ID="TxtFax" runat="server" placeholder="Enter Blood Bank Fax No." 
                Height="25px" Width="253px"></asp:TextBox>
         </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TxtFax" Display="Dynamic" 
                ErrorMessage="Please Enter Blood bank Fax Number" ForeColor="White"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    <tr>

     <td class="style1" 
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;">

    License ID
    </td>
 <td>
     <asp:FileUpload ID="FileUploadId" runat="server" Height="30px" Width="253px" 
         BackColor="White" BorderColor="White" />
 </td>
 <td>
 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Please Upload  Blood Bank License ID" 
            ControlToValidate="FileUploadId" Display="Dynamic" 
            ForeColor="White"></asp:RequiredFieldValidator>
 
 </td>
    </tr>
    <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td colspan="3" align="center">
                    <asp:Button ID="BtnSave" runat="server" Text="Save" ForeColor="White" BackColor="black"
                         Height="30px" Width="90px" onclick="BtnSave_Click" CssClass="style1"  />
        <asp:Button ID="BtnUpdate" runat="server" Text="Update" onclick="BtnUpdate_Click" 
                        Visible="False" CssClass="style1" Height="30px" Width="90px" />
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
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>

    </table>
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>
<tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>

    <table align="center">
    
                <tr>
                
                <td colspan="2">
                
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" AutoGenerateColumns="False" 
                        OnRowDeleting="delete_Data"
                        DataKeyNames="BloodBankId" 
                        AllowPaging="True" AutoGenerateDeleteButton="True" CellSpacing="2" 
                        ForeColor="Black" Height="101px" Width="1304px">


                        <Columns>
                         <asp:TemplateField HeaderText="Edit">
             
             <ItemTemplate>
                <a href='?a=<%# Eval("BloodBankId") %>'>Edit</a>
             </ItemTemplate>
             
             </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text=' <%# Eval("BloodBankId") %>'></asp:Label>
                       
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Blood_Bank_Name">
                       
                        <ItemTemplate>
                        <%# Eval("BloodBankName") %>

                        
                          </ItemTemplate>


           


                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Type">
                       
                        <ItemTemplate>
                        <%# Eval("Types") %>

                        
                          </ItemTemplate>


           


                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Hospital Name">
                        <ItemTemplate>
                        <%# Eval("HospitalName") %>
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

                         <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                        <%# Eval("Address") %>
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                        <%# Eval("Email") %>
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                        <%# Eval("phone") %>
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="URL">
                        <ItemTemplate>
                        <%# Eval("website") %>
                        </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Fax">
                        <ItemTemplate>
                        <%# Eval("Fax") %>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="License">
                       
                        <ItemTemplate>
                        <%# Eval("LicenseId") %>
                          </ItemTemplate>
                        </asp:TemplateField>

                        

                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </td></tr>
    </table>
    <table>
         <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
        <td colspan="2">
        &nbsp;
        </td>
    </tr>
     <tr>
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
    </div>
</body>
</html>
