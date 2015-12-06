<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changepw.aspx.cs" Inherits="Changepw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="lNew" runat="server" Text="New Password:" 
        style="z-index: 1; left: 22px; top: 266px; position: absolute"></asp:Label>
    <asp:TextBox ID="tbNew" runat="server" 
        style="z-index: 1; left: 265px; top: 264px; position: absolute" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="lSuccess" runat="server" ForeColor="#FF9900" 
        style="z-index: 1; left: 140px; top: 376px; position: absolute" Visible="False"></asp:Label>
    <asp:TextBox ID="tbOld" runat="server" 
        style="z-index: 1; left: 266px; top: 222px; position: absolute" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="lVerify" runat="server" ForeColor="#FF3300" 
        style="z-index: 1; left: 470px; top: 304px; position: absolute" Visible="False"></asp:Label>
    <asp:Label ID="lUser" runat="server" 
        style="z-index: 1; left: 24px; top: 180px; position: absolute" Text="Username:"></asp:Label>
    <asp:DropDownList ID="ddlUser" runat="server" 
        style="z-index: 1; left: 133px; top: 178px; position: absolute">
    </asp:DropDownList>
    <asp:Label ID="lError" runat="server" ForeColor="#FF3300" 
        style="z-index: 1; left: 249px; top: 349px; position: absolute" Visible="False"></asp:Label>
    <asp:Label ID="lOld" runat="server" 
        style="z-index: 1; left: 24px; top: 223px; position: absolute; " 
        Text="Old Password:"></asp:Label>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 17px; top: 304px; position: absolute" 
        Text="Verify New Password:"></asp:Label>
    <asp:TextBox ID="tbVerify" runat="server" 
        style="z-index: 1; top: 301px; position: absolute; left: 264px" 
        TextMode="Password"></asp:TextBox>
    <asp:Button ID="bSubmit" runat="server" 
        style="z-index: 1; left: 137px; top: 347px; position: absolute" 
        Text="Submit" onclick="bSubmit_Click" />
    <asp:Button ID="bHome" runat="server" onclick="bHome_Click" 
        style="z-index: 1; left: 24px; top: 139px; position: absolute" Text="Home" />
    </form>
</body>
</html>
