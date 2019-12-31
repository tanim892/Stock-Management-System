<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCategoryNameUI.aspx.cs" Inherits="StockManagementSystem.UI.UpdateCategoryNameUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category SetUp</title>
    <link href="../style/CategorySetUp.css" rel="stylesheet" />
</head>

<body>
    <div id="container">
        <form id="form1" runat="server">
        
           
                                      
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                       
                        <asp:HiddenField ID="slHiddenField" runat="server" />
                   
                        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
               
                        <br />
               
                        <asp:Label ID="outputMsgLabel" runat="server"></asp:Label>
                   
                        <br />
                   
                        <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click" />
                
                
            

        </form>    
       </div><!--Container Ends Here-->

</body>
</html>
