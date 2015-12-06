<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Projectinfo.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 374px" background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lCberror" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 300px; top: 354px; position: absolute"></asp:Label>
    
        <asp:DropDownList ID="ddlName" runat="server" Height="20px" 
            
            style="z-index: 1; left: 239px; top: 157px; position: absolute; bottom: 175px">
        </asp:DropDownList>
        <asp:Label ID="lName" runat="server" 
            style="z-index: 1; left: 94px; top: 158px; position: absolute" 
            Text="Name:"></asp:Label>
        <asp:Label ID="lCategory" runat="server" 
            style="z-index: 1; left: 94px; top: 288px; position: absolute" 
            Text="Project Category:"></asp:Label>
        <asp:TextBox ID="tbCategory" runat="server" 
            style="z-index: 1; left: 237px; top: 286px; position: absolute"></asp:TextBox>
    
        <asp:TextBox ID="tbTitle" runat="server" 
            style="z-index: 1; left: 238px; top: 202px; position: absolute"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="bHome" runat="server" onclick="bHome_Click" 
            style="z-index: 1; left: 24px; top: 144px; position: absolute" 
            Text="Home" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Project&nbsp; Information</div>
    <asp:Label ID="lTitle" runat="server" 
        style="z-index: 1; left: 93px; top: 205px; position: absolute" 
        Text="Title:"></asp:Label>
    <asp:Label ID="lFrontend" runat="server" 
        style="z-index: 1; left: 92px; top: 232px; position: absolute" 
        Text="Frontend technology:"></asp:Label>
    <asp:TextBox ID="tbFrontend" runat="server" 
        style="z-index: 1; left: 237px; top: 230px; position: absolute"></asp:TextBox>
    <asp:Label ID="lBackend" runat="server" 
        style="z-index: 1; left: 91px; top: 261px; position: absolute" 
        Text="Backend technology:"></asp:Label>
    <asp:TextBox ID="tbBackend" runat="server" 
        style="z-index: 1; left: 237px; top: 258px; position: absolute"></asp:TextBox>
    <asp:Button ID="bSave" runat="server" 
        style="z-index: 1; left: 248px; top: 350px; position: absolute" 
        Text="Save" onclick="bSave_Click" />
    <asp:CheckBox ID="cbConfirm" runat="server" 
        style="z-index: 1; left: 88px; top: 354px; position: absolute" 
        Text="Confirm" />
    </form>
</body>
</html>
