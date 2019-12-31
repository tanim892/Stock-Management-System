<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySetupUI.aspx.cs" Inherits="StockManagementSystem.UI.CompanySetupUI" %>

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
                        <h4>Company Setup</h4>
                    </div>
                    <div class="panel-body">

    <div>
        <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server" Width="174px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="outputMsgLabel" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
        </tr>
       
    </table>
        <asp:GridView ID="companyGridView" runat="server">
  
        </asp:GridView>
    </div>
              </div>

                </div>

            </div>

         </div>           

    </form>
     <div class="panel-footer">
             
                        <div class="col-md-3">
                            <div class="pull-left">
                                <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                    <i class="fa fa-arrow-circle-left"></i>Back to Home
                                </a>
                            </div>
                       
                             </div>
             
                    </div>
</body>
</html>
