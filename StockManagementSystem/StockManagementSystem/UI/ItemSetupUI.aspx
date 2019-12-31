<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="StockManagementSystem.UI.ItemSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    
        <div class="container">
            <h3 class="text-center">Stock Management Sysem</h3>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Item Setup</h4>
                    </div>
                    <div class="panel-body">
        
        <div>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label></td>
            <td>
                <asp:DropDownList ID="categoryDropDownList" runat="server"></asp:DropDownList>
                </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label></td>
            <td>
                <asp:DropDownList ID="companyDropDownList" runat="server" >
                    
                </asp:DropDownList>
                </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="itemTextBox" runat="server" Width="174px"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Reorder Level"></asp:Label></td>
            <td>
                <asp:TextBox ID="reorderTextBox" runat="server" Width="174px"></asp:TextBox></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="outputMsgLabel" runat="server" Text="output"></asp:Label>
            </td>
            <td>
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
        </tr>
       
        
         

    </table>
    </div>
      </div>
                </div>

            </div>

        </div>     <br/>     <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>          
         <div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>
                            </div>
                       
                             </div>
             
                    </div>

    </form>
</body>
</html>
