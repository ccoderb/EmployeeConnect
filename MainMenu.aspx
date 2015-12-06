<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="MainMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Background/mainbg1.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="bChangepw" runat="server" BackColor="#CCCCFF" 
            onclick="bChangepw_Click" 
            style="z-index: 1; left: 296px; top: 338px; position: absolute" 
            Text="Change Login Password" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <asp:Button ID="bGrid" runat="server" BackColor="#CCCCFF" onclick="bGrid_Click" 
        style="z-index: 1; left: 451px; top: 169px; position: absolute" 
        Text="Show Data" />
    <asp:Button ID="bEdit" runat="server" BackColor="#CCCCFF" onclick="bEdit_Click" 
        style="z-index: 1; left: 408px; top: 302px; position: absolute" 
        Text="Edit Trainee Data" />
    <asp:Button ID="bInfo" runat="server" BackColor="#CCCCFF" onclick="bInfo_Click" 
        style="z-index: 1; left: 296px; top: 214px; position: absolute" 
        Text="Add Project Info" />
    <asp:Button ID="bView" runat="server" BackColor="#CCCCFF" onclick="bView_Click" 
        style="z-index: 1; left: 296px; top: 302px; position: absolute" 
        Text="Documents" />
    <asp:Button ID="bDoc" runat="server" BackColor="#CCCCFF" onclick="bDoc_Click" 
        style="z-index: 1; left: 297px; top: 259px; position: absolute" 
        Text="Add Trainee Report Data" />
    <asp:Button ID="bAdd" runat="server" BackColor="#CCCCFF" 
        onclick="bAdd_Click" 
        style="z-index: 1; left: 293px; top: 170px; position: absolute; right: 410px" 
        Text="Add Trainee Data" />
    </form>
</body>
</html>
