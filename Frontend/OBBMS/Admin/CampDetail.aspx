<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CampDetail.aspx.cs" Inherits="Admin_CampDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 36px;
        }
        </style>
</head>
<body background="../images/Back1.jpg">

    <form id="form1" runat="server">
    <table align="center" width='100%'>
    <tr  align="center" style='background:''>
    <td style="color:White;font-weight:bold; background-color: #FFFFFF; background-image: url('../images/item_bg.jpg');" 
            align="center">
 
   </td></tr></table>
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
         Add camp Detail here...</h3></center>
         
    <table align="center"  border="0" 
            
            
            style="background-image: url('../images/back%204.jpg'); height: 497px;" 
            width="600">
            <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style1" 
            
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;" 
            align="center">
        State
    </td>
    <td class="style1">
        <asp:DropDownList ID="DropDownState" runat="server" 
            onselectedindexchanged="DropDownState_SelectedIndexChanged" 
            AutoPostBack="True" Height="25px" Width="253px">
               <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList> </td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            Display="Dynamic" ErrorMessage="Please Select Camp State" ForeColor="White" 
            ControlToValidate="DropDownState"></asp:RequiredFieldValidator>
   </td>
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC" 
            align="center">
        District
    </td>
    <td height="25" width="253">
        <asp:DropDownList ID="DropDownDistrict" runat="server" Height="25px" 
            Width="253px">
               <asp:ListItem>Select District</asp:ListItem>
        </asp:DropDownList>
       <td> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownDistrict" Display="Dynamic" 
            ErrorMessage="Please Select Camp District" ForeColor="White"></asp:RequiredFieldValidator>
    </td></td>
    
    </tr>
    <tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>

    <tr>
    <td class="style1" 
            
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;" 
            align="center">
        Venue Address
    </td>
    <td>
    <asp:TextBox ID="TxtVenueAddress" runat="server" placeholder="Enter Venue Address" 
            TextMode="MultiLine" Height="50px" Width="253px"></asp:TextBox>
      <td>  
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TxtVenueAddress" Display="Dynamic" 
            ErrorMessage="Please Enter Camp Venue Address" ForeColor="White"></asp:RequiredFieldValidator>
    </td></td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;
        </td>
    </tr>
    <tr>
    <td class="style1" 
            
            style="color: #00FFCC; font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal" 
            align="center">
        Time
    </td>
    <td>
        <asp:TextBox ID="TxtTime" runat="server" placeholder="Enter Time" 
            TextMode="Time" Height="25px" Width="253px"></asp:TextBox>
      <td>  
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TxtTime" Display="Dynamic" 
            ErrorMessage="Please Enter Camp Timing" ForeColor="White"></asp:RequiredFieldValidator>
    </td></td>
    </tr>
        
<tr>
    
        <td colspan="3">
        &nbsp;
        </td>
    </tr>


    <tr>
    <td class="style1" 
            
            style="font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: normal; color: #00FFCC;" 
            align="center">
        Date
    </td>
    <td>
        <asp:TextBox ID="TxtDate" runat="server" placeholder="Select Date" 
         TextMode="Date" Height="25px" Width="253px"></asp:TextBox>

    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TxtDate" Display="Dynamic" ErrorMessage="Please Select Camp Date" 
            ForeColor="White"></asp:RequiredFieldValidator>
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
        </td>
    </tr>
    <tr>
    
        <td colspan="3" align="center">
         <asp:Button ID="BtnSave" runat="server" Text="Save" ForeColor="White" BackColor="black"
                         Height="30px" Width="90px" onclick="BtnSave_Click"  />
        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                Visible="False" Height="30px" Width="90px" />
        
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
        </td>
    </tr>
     <tr>
    
        <td colspan="3">
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
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          OnRowDeleting="delete_Data"
          OnRowCancelingEdit=" cancel_Edit"
          OnRowEditing="grid_edit"
          OnRowUpdating="grid_up"
          DataKeyNames="CampId" 


             BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
             CellPadding="4" AutoGenerateDeleteButton="True" CellSpacing="2" 
             ForeColor="Black" Width="930px">
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
             <asp:TemplateField HeaderText="Edit">
             
             <ItemTemplate>
                <a href='?a=<%# Eval("CampId") %>'>Edit</a>
             </ItemTemplate>
             
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Id">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text=' <%# Eval("CampId")%>'></asp:Label>
                       
                         
                   
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

                         <asp:TemplateField HeaderText="Venue Address">
                       
                        <ItemTemplate>
                        <%# Eval("VenueAddress")%>
                         
                   
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Time">
                       
                        <ItemTemplate>
                        <%# Eval("Time") %>
                         
                        
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                       
                        <ItemTemplate>
                                               <%# Eval("Date") %>
                        
                        
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
</body>
</html>
