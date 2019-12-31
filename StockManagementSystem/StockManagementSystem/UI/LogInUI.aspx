<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInUI.aspx.cs" Inherits="StockManagementSystem.UI.LogInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
&nbsp;<asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="outputMsgLabel" runat="server"></asp:Label>
        <br />
        <asp:Button ID="loginButton" runat="server" OnClick="saveButton_Click" Text="Login" />
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="NewAccountUI.aspx">Create Account</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
