<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Default2"  MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 324px" 
    background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div style="height: 20px">
    
        <asp:Button ID="bHome" runat="server" onclick="bHome_Click" 
            style="z-index: 1; left: 15px; top: 138px; position: absolute" 
            Text="Home" />
    
        .<asp:Button ID="bUpload" 
            runat="server" onclick="bUpload_Click" 
            style="z-index: 1; left: 686px; top: 222px; position: absolute" 
            Text="Upload" Visible="False" />
    
        <asp:RegularExpressionValidator ID="revContactno" runat="server" 
            ControlToValidate="tbContactno" ErrorMessage="10 digit number only" 
            style="z-index: 1; left: 173px; top: 399px; position: absolute" 
            ValidationExpression="[0-9]{10}$"></asp:RegularExpressionValidator>
    
        <asp:FileUpload ID="fuPhoto" runat="server" 
            style="z-index: 1; left: 681px; top: 171px; position: absolute" 
            Visible="False" />
    
    </div>
    <asp:Label ID="lName" runat="server" 
        style="z-index: 1; left: 19px; top: 169px; position: absolute; right: 709px" 
        Text="Name:"></asp:Label>
    <asp:TextBox ID="tbName" runat="server" 
        style="z-index: 1; top: 168px; position: absolute; left: 97px"></asp:TextBox>
    <asp:TextBox ID="tbInstitute" runat="server" 
        style="z-index: 1; left: 97px; top: 197px; position: absolute"></asp:TextBox>
    <asp:Label ID="lCourse" runat="server" 
        style="z-index: 1; left: 16px; top: 228px; position: absolute" 
        Text="Course:"></asp:Label>
    <asp:DropDownList ID="ddlCourse" runat="server" 
        style="z-index: 1; left: 98px; top: 227px; position: absolute">
        <asp:ListItem>B.Tech</asp:ListItem>
        <asp:ListItem>MBA</asp:ListItem>
        <asp:ListItem>B.Com.</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lYear" runat="server" 
        style="z-index: 1; left: 17px; top: 256px; position: absolute" 
        Text="Year:"></asp:Label>
    <asp:DropDownList ID="ddlYear" runat="server" 
        
        
        style="z-index: 1; left: 98px; top: 258px; position: absolute; height: 21px; width: 33px;">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem Selected="True">2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lStartdate" runat="server" 
        style="z-index: 1; left: 15px; top: 284px; position: absolute" 
        Text="StartDate:"></asp:Label>
    <asp:ImageButton ID="ibStartdate" runat="server" 
        ImageUrl="~/Images/ic_launcher_calendar.png" onclick="ibStartdate_Click" 
        
        
        style="z-index: 1; left: 252px; top: 277px; position: absolute; height: 32px; width: 34px" />
    <asp:TextBox ID="tbStartdate" runat="server" 
        ontextchanged="tbStartdate_TextChanged" 
        style="z-index: 1; left: 98px; top: 282px; position: absolute"></asp:TextBox>
    <asp:Calendar ID="cEnddate" runat="server" 
        onselectionchanged="cEnddate_SelectionChanged" 
        
        
        
        
        style="z-index: 1; left: 299px; top: 311px; position: absolute; height: 188px; width: 259px"></asp:Calendar>
    <asp:Calendar ID="cStartdate" runat="server" 
        onselectionchanged="cStartdate_SelectionChanged" 
        
        
        style="z-index: 1; left: 299px; top: 283px; position: absolute; height: 188px; width: 259px">
    </asp:Calendar>
    <asp:Label ID="lEnddate" runat="server" 
        style="z-index: 1; left: 15px; top: 311px; position: absolute" 
        Text="EndDate:"></asp:Label>
    <asp:Label ID="lCberror" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 346px; top: 521px; position: absolute" 
        Visible="False"></asp:Label>
    <asp:Label ID="lAddress" runat="server" 
        style="z-index: 1; left: 15px; top: 440px; position: absolute" 
        Text="Address:"></asp:Label>
    <asp:TextBox ID="tbEnddate" runat="server" ontextchanged="tbEnddate_TextChanged" 
        style="z-index: 1; left: 98px; top: 309px; position: absolute"></asp:TextBox>
    .<p>
    <asp:Label ID="lInstitute" runat="server" 
        style="z-index: 1; left: 16px; top: 198px; position: absolute; bottom: 120px; width: 63px;" 
            Text="Institute:" Height="20px"></asp:Label>
        <asp:Label ID="lCerror" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 171px; top: 330px; position: absolute" 
            Visible="False"></asp:Label>
    </p>
    <asp:Label ID="lDuration" runat="server" 
        style="position: absolute; z-index: 1; left: 16px; top: 351px; bottom: 175px; height: 19px" 
        Text="Duration:"></asp:Label>
    <asp:DropDownList ID="ddlDuration" runat="server" 
        style="z-index: 1; left: 98px; top: 350px; position: absolute">
        <asp:ListItem Value="6">6 Weeks</asp:ListItem>
        <asp:ListItem Value="8">8 Weeks</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lContactno" runat="server" 
        style="z-index: 1; left: 13px; top: 380px; position: absolute" 
        Text="Contact No:"></asp:Label>
    <asp:TextBox ID="tbAddress" runat="server" 
        
        
        
        style="z-index: 1; left: 95px; top: 419px; position: absolute; width: 203px; height: 57px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="lPhoto" runat="server" 
        style="z-index: 1; left: 636px; top: 174px; position: absolute" 
        Text="Photo:" Visible="False"></asp:Label>
    <p>
        &nbsp;</p>
    <asp:TextBox ID="tbContactno" runat="server" 
        style="z-index: 1; left: 96px; top: 378px; position: absolute"></asp:TextBox>
    <asp:Image ID="iphoto" runat="server" ImageUrl="~/Images/download.jpg" 
        
        
        style="z-index: 1; left: 653px; top: 281px; position: absolute; width: 224px" />
    <asp:Button ID="bSave" runat="server" 
        style="z-index: 1; left: 294px; top: 518px; position: absolute" 
        Text="Save" onclick="bSave_Click" />
    <asp:CheckBox ID="cbConfirm" runat="server" 
        style="z-index: 1; left: 111px; top: 520px; position: absolute" 
        Text="Confirm" />
    <p>
        <asp:ImageButton ID="ibEnddate" runat="server" 
            ImageUrl="~/Images/ic_launcher_calendar.png" 
            
            
            style="z-index: 1; left: 251px; top: 304px; position: absolute; height: 33px; width: 34px" 
            onclick="ibEnddate_Click" />
        <asp:Label ID="lDiscipline" runat="server" 
            style="z-index: 1; left: 316px; top: 228px; position: absolute" 
            Text="Discipline:"></asp:Label>
        <asp:TextBox ID="tbDiscipline" runat="server" 
            style="z-index: 1; left: 387px; top: 226px; position: absolute"></asp:TextBox>
        <asp:Label ID="lReferenceno" runat="server" 
            style="z-index: 1; left: 15px; top: 492px; position: absolute; right: 652px; height: 33px;" 
            Text="Reference No.:"></asp:Label>
        <asp:TextBox ID="tbReferenceno" runat="server" 
            style="z-index: 1; left: 111px; top: 492px; position: absolute"></asp:TextBox>
    </p>
    </form>
</body>
</html>
