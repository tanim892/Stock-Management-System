<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchViewItemUI.aspx.cs" Inherits="StockManagementSystem.UI.SearchViewItemUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
         <div class="container">
            <h3 class="text-center">Stock Management Sysem</h3>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Company Setup</h4>
                    </div>
                    <div class="panel-body">

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
                <asp:Label ID="outputMsgLabel" runat="server" Text="output"></asp:Label>
            </td>
            <td>
                <asp:Button ID="searchButton" runat="server" Text="Search" /></td>
        </tr>
       
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>


    </table>
                           </div> 

                </div> 

            </div>  

         </div>
    </div>
    </form>
    <br/>  <br/>  <br/>  <br/>  <br/>  <br/>
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
