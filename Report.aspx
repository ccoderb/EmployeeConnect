<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="bCerti" runat="server" onclick="bCerti_Click" 
            style="z-index: 1; left: 78px; top: 297px; position: absolute" 
            Text="Show Certificate" />
        <asp:Label ID="lCode" runat="server" 
            style="z-index: 1; left: 201px; top: 368px; position: absolute"></asp:Label>
        <asp:Label ID="lCerti" runat="server" 
            style="z-index: 1; left: 236px; top: 300px; position: absolute"></asp:Label>
        <asp:Button ID="bCode" runat="server" onclick="bCode_Click" 
            style="z-index: 1; left: 77px; top: 364px; position: absolute" 
            Text="Show Code" />
        <asp:Label ID="lFilename" runat="server" Style="z-index: 1; left: 206px; top: 235px;
            position: absolute; bottom: 160px;" Visible="true"></asp:Label>
        

        <asp:Label ID="lName" runat="server" Text="Name:" 
            style="z-index: 1; left: 147px; top: 159px; position: absolute"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddlName" runat="server" Style="z-index: 1; left: 198px; top: 159px;
            position: absolute" >
        </asp:DropDownList>
    </div>
    <asp:Button ID="bHome" runat="server" onclick="bHome_Click" 
        style="z-index: 1; left: 10px; top: 142px; position: absolute" 
        Text="Home" />
    <asp:Image ID="iPhoto" runat="server" 
        
        
        style="z-index: 1; left: 440px; top: 151px; position: absolute; height: 88px; width: 93px" />
    <asp:Button ID="bShow" runat="server" Style="z-index: 1; left: 78px; top: 231px; position: absolute"
        Text="Show Report" OnClick="bShow_Click" />
    </form>
</body>
</html>
