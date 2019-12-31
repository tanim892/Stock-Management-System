<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccountUI.aspx.cs" Inherits="StockManagementSystem.UI.NewAccountUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="createButton" runat="server" OnClick="createButton_Click" Text="Create" />
        <br />
        <asp:Label ID="outputMsgLabel" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="LogInUI.aspx">Return To Login</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
