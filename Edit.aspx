<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 324px" background="Background/mainbg.jpg">
    <form id="form1" runat="server">
    <div style="height: 20px">
    
        <asp:Button ID="bHome" runat="server" onclick="bHome_Click" 
            style="z-index: 1; left: 10px; top: 161px; position: absolute" 
            Text="Home" />
    
        <asp:Button ID="bSubmit" runat="server" onclick="bSubmit_Click" 
            style="z-index: 1; left: 320px; top: 183px; position: absolute; right: 375px; height: 32px;" 
            Text="Submit" />
    
        .<asp:RegularExpressionValidator ID="revContactno" runat="server" 
            ControlToValidate="tbContactno" ErrorMessage="10 digit number only" 
            style="z-index: 1; left: 128px; top: 431px; position: absolute" 
            ValidationExpression="[0-9]{10}$"></asp:RegularExpressionValidator>
    
    </div>
    <asp:Label ID="lName" runat="server" 
        style="z-index: 1; left: 21px; top: 191px; position: absolute; right: 700px" 
        Text="Name:"></asp:Label>
    <asp:TextBox ID="tbInstitute" runat="server" 
        style="z-index: 1; left: 77px; top: 223px; position: absolute"></asp:TextBox>
    <asp:Label ID="lCourse" runat="server" 
        style="z-index: 1; left: 16px; top: 254px; position: absolute" 
        Text="Course:"></asp:Label>
    <asp:DropDownList ID="ddlCourse" runat="server" 
        style="z-index: 1; left: 78px; top: 253px; position: absolute">
        <asp:ListItem>B.Tech</asp:ListItem>
        <asp:ListItem>MBA</asp:ListItem>
        <asp:ListItem>B.Com.</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lYear" runat="server" 
        style="z-index: 1; left: 16px; top: 283px; position: absolute" 
        Text="Year:"></asp:Label>
    <asp:DropDownList ID="ddlYear" runat="server" 
        style="z-index: 1; left: 78px; top: 282px; position: absolute">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem Selected="True">2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lStartdate" runat="server" 
        style="z-index: 1; left: 17px; top: 325px; position: absolute" 
        Text="StartDate:"></asp:Label>
    <asp:ImageButton ID="ibStartdate" runat="server" 
        ImageUrl="~/Images/ic_launcher_calendar.png" onclick="ibStartdate_Click" 
        
        
        style="z-index: 1; left: 252px; top: 316px; position: absolute; height: 32px; width: 34px" />
    <asp:TextBox ID="tbStartdate" runat="server" 
        ontextchanged="tbStartdate_TextChanged" 
        style="z-index: 1; left: 90px; top: 322px; position: absolute"></asp:TextBox>
    <asp:Calendar ID="cEnddate" runat="server" 
        onselectionchanged="cEnddate_SelectionChanged" 
        
        
        
        
        style="z-index: 1; left: 293px; top: 356px; position: absolute; height: 188px; width: 259px"></asp:Calendar>
    <asp:Calendar ID="cStartdate" runat="server" 
        onselectionchanged="cStartdate_SelectionChanged" 
        
        
        style="z-index: 1; left: 292px; top: 318px; position: absolute; height: 188px; width: 259px">
    </asp:Calendar>
    <asp:Label ID="lEnddate" runat="server" 
        style="z-index: 1; left: 15px; top: 361px; position: absolute" 
        Text="EndDate:"></asp:Label>
    <asp:Label ID="lCberror" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 345px; top: 603px; position: absolute" 
        Visible="False"></asp:Label>
    <asp:Label ID="lAddress" runat="server" 
        style="z-index: 1; left: 15px; top: 499px; position: absolute" 
        Text="Address:"></asp:Label>
    <asp:TextBox ID="tbEnddate" runat="server" ontextchanged="tbEnddate_TextChanged" 
        style="z-index: 1; left: 90px; top: 358px; position: absolute"></asp:TextBox>
    .<asp:DropDownList ID="ddlName" runat="server" 
        style="z-index: 1; left: 77px; top: 190px; position: absolute" 
        Width="99px">
    </asp:DropDownList>
    <p>
    <asp:Label ID="lInstitute" runat="server" 
        style="z-index: 1; left: 15px; top: 228px; position: absolute; bottom: 118px;" 
            Text="Institute:"></asp:Label>
        <asp:Label ID="lCerror" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 93px; top: 382px; position: absolute" 
            Visible="False"></asp:Label>
    </p>
    <asp:Label ID="lDuration" runat="server" 
        style="position: absolute; z-index: 1; left: 16px; top: 405px; bottom: 202px; height: 19px" 
        Text="Duration:"></asp:Label>
    <asp:DropDownList ID="ddlDuration" runat="server" 
        style="z-index: 1; left: 89px; top: 405px; position: absolute">
        <asp:ListItem Value="6">6 Weeks</asp:ListItem>
        <asp:ListItem Value="8">8 Weeks</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lContactno" runat="server" 
        style="z-index: 1; left: 13px; top: 452px; position: absolute" 
        Text="Contact No:"></asp:Label>
    <asp:TextBox ID="tbAddress" runat="server" 
        
        
        
        style="z-index: 1; left: 94px; top: 479px; position: absolute; width: 203px; height: 57px" 
        TextMode="MultiLine"></asp:TextBox>
    <p>
        &nbsp;</p>
    <asp:TextBox ID="tbContactno" runat="server" 
        style="z-index: 1; left: 95px; top: 449px; position: absolute"></asp:TextBox>
    <asp:Image ID="iphoto" runat="server" ImageUrl="~/Images/download.jpg" 
        
        
        style="z-index: 1; left: 653px; top: 135px; position: absolute; width: 224px" />
    <asp:Button ID="bSave" runat="server" 
        style="z-index: 1; left: 294px; top: 600px; position: absolute; height: 26px;" 
        Text="Save" onclick="bSave_Click" />
    <asp:CheckBox ID="cbConfirm" runat="server" 
        style="z-index: 1; left: 99px; top: 601px; position: absolute" 
        Text="Confirm" />
    <p>
        <asp:ImageButton ID="ibEnddate" runat="server" 
            ImageUrl="~/Images/ic_launcher_calendar.png" 
            
            
            style="z-index: 1; left: 251px; top: 351px; position: absolute; height: 33px; width: 34px" 
            onclick="ibEnddate_Click" />
        <asp:Label ID="lDiscipline" runat="server" 
            style="z-index: 1; left: 294px; top: 286px; position: absolute" 
            Text="Discipline:"></asp:Label>
        <asp:TextBox ID="tbDiscipline" runat="server" 
            style="z-index: 1; left: 367px; top: 284px; position: absolute"></asp:TextBox>
        <asp:Label ID="lReferenceno" runat="server" 
            style="z-index: 1; left: 15px; top: 547px; position: absolute" 
            Text="Reference No.:"></asp:Label>
        <asp:TextBox ID="tbReferenceno" runat="server" 
            style="z-index: 1; left: 111px; top: 545px; position: absolute"></asp:TextBox>
    </p>
    </form>
</body>
</html>
