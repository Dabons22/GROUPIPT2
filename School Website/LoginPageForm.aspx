<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPageForm.aspx.cs" Inherits="School_Website.LoginPageForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Content/LoginForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="FormField">
            <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Medium" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblpassword" runat="server" Font-Bold="True" Font-Size="Medium" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" style="margin-left: 4px"></asp:TextBox>
     <div class ="Bottom">
                <br /> <asp:Label ID="lblsign" runat="server" ForeColor="Red" Text="Invalid Credentials"></asp:Label>
            <br />
                        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="LOGIN" />
       
             </div>
            </div>
    </form>
</body>
</html>
