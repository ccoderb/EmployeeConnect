<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc.aspx.cs" Inherits="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #FFFFFF" background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lName" runat="server" 
            style="z-index: 1; left: 18px; top: 176px; position: absolute; right: 680px;" 
            Text="Name:"></asp:Label>
        <asp:DropDownList ID="ddlName" runat="server" Height="20px" 
            style="z-index: 1; left: 86px; top: 176px; position: absolute">
        </asp:DropDownList>
    
    </div>
    <asp:Label ID="lSubdate" runat="server" Text="Report submitted date:" 
        style="z-index: 1; left: 14px; top: 213px; position: absolute"></asp:Label>
    <asp:TextBox ID="tbSubdate" runat="server" 
        style="z-index: 1; left: 165px; top: 210px; position: absolute" 
        ontextchanged="tbSubdate_TextChanged"></asp:TextBox>
    <asp:Calendar ID="cSubdate" runat="server" 
        
        style="z-index: 1; left: 356px; top: 208px; position: absolute; height: 188px; width: 259px" 
        onselectionchanged="cSubdate_SelectionChanged">
    </asp:Calendar>
    <asp:Button ID="bHome" runat="server" onclick="bHome_Click" 
        style="z-index: 1; left: 22px; top: 137px; position: absolute" 
        Text="Home" />
    <asp:Label ID="lAcceptdate" runat="server" 
        style="z-index: 1; left: 14px; top: 247px; position: absolute" 
        Text="Report accepted date:"></asp:Label>
    <asp:TextBox ID="tbAcceptdate" runat="server" 
        style="z-index: 1; left: 166px; top: 245px; position: absolute" 
        ontextchanged="tbAcceptdate_TextChanged"></asp:TextBox>
    <asp:ImageButton ID="ibAcceptdate" runat="server" 
        ImageUrl="~/Images/ic_launcher_calendar.png" 
        
        style="z-index: 1; left: 321px; top: 240px; position: absolute; height: 32px; width: 33px" 
        onclick="ibAcceptdate_Click" />
    <asp:Label ID="lCberror" runat="server" ForeColor="#FF3300" 
        style="z-index: 1; left: 262px; top: 505px; position: absolute" 
        Visible="False"></asp:Label>
    <asp:FileUpload ID="fuCerti" runat="server" 
        style="z-index: 1; left: 120px; top: 391px; position: absolute" />
    <asp:CheckBox ID="cbConfirm" runat="server" 
        style="z-index: 1; left: 76px; top: 506px; position: absolute" 
        Text="Confirm" />
    
        <asp:ImageButton ID="ibSubdate" runat="server" 
            ImageUrl="~/Images/ic_launcher_calendar.png" 
            
            style="z-index: 1; left: 325px; top: 203px; position: absolute; width: 33px; height: 36px" 
            onclick="ibSubdate_Click" />
    
    <asp:Calendar ID="cAcceptdate" runat="server" 
        
        style="z-index: 1; left: 356px; top: 240px; position: absolute; height: 188px; width: 259px" 
        onselectionchanged="cAcceptdate_SelectionChanged">
    </asp:Calendar>
    <asp:Label ID="lCerror" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 25px; top: 272px; position: absolute" 
        Visible="False"></asp:Label>
    <asp:FileUpload ID="fuReport" runat="server" 
        style="z-index: 1; left: 120px; top: 302px; position: absolute" />
    <asp:Label ID="lReport" runat="server" 
        style="z-index: 1; left: 21px; top: 303px; position: absolute" 
        Text=" Project Report:"></asp:Label>
    <asp:Label ID="lCode" runat="server" 
        style="z-index: 1; left: 23px; top: 349px; position: absolute" 
        Text="Project Code:"></asp:Label>
    <asp:FileUpload ID="fuCode" runat="server" 
        style="z-index: 1; left: 121px; top: 349px; position: absolute" />
    <asp:Label ID="lCerti" runat="server" 
        style="z-index: 1; left: 25px; top: 394px; position: absolute" 
        Text="Certificate:"></asp:Label>
    <asp:Button ID="bSave" runat="server" 
        style="z-index: 1; left: 212px; top: 503px; position: absolute" 
        Text="Save" onclick="bSave_Click" />
    </form>
</body>
</html>
