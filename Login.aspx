<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Background/mainbg1.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="lUsername" runat="server" 
        style="z-index: 1; left: 294px; top: 225px; position: absolute" 
        Text="User Name:"></asp:Label>
    <asp:TextBox ID="tbPassword" runat="server" 
        style="z-index: 1; left: 440px; top: 284px; position: absolute" 
        TextMode="Password"></asp:TextBox>
    <asp:Button ID="bSubmit" runat="server" onclick="bSubmit_Click" 
        style="z-index: 1; left: 473px; top: 346px; position: absolute" Text="Submit" />
    <asp:Label ID="lError" runat="server" ForeColor="#FF3300" 
        style="z-index: 1; left: 444px; top: 309px; position: absolute" Visible="False"></asp:Label>
    <asp:Label ID="lPassword" runat="server" 
        style="z-index: 1; left: 295px; top: 284px; position: absolute" 
        Text="Password:"></asp:Label>
    <asp:TextBox ID="tbUsername" runat="server" 
        style="z-index: 1; left: 440px; top: 224px; position: absolute">admin</asp:TextBox>
    </form>
</body>
</html>
