<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementSystem.UI.StockInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    </head>
<body>
    <form id="form1" runat="server">
        
        
        <div class="p">
    <div class="container">
        <h3 class="text-center">Stock Management Sysem</h3>
         <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Stock In</h4>
                    </div>
        <div class="panel-body">
        <div class="col-md-10 margin-bottom">
    
            <div class="form-group">
                <asp:HiddenField ID="idsHiddenField" Value='<%#Eval("Sl") %>' runat="server" />
                <asp:Label ID="Label1" runat="server" Text="Company" CssClass="col-md-4 control-label"></asp:Label>
                <div class="col-md-8"> <h5 style="color:red"><asp:Label ID="outputMsgLabel" runat="server" Text=""></asp:Label></h5> <asp:DropDownList ID="companyDropDownList" runat="server" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged"  AutoPostBack="true" CssClass="form-control margin-bottom "></asp:DropDownList></div>
            </div>
            
            <div class="form-group"><asp:Label ID="Label2" runat="server" Text="Item" CssClass="col-md-4 control-label"></asp:Label></div>
            <div class="col-md-8"> <asp:DropDownList ID="itemDropDownList" runat="server" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged"  AutoPostBack="true" CssClass="form-control margin-bottom "></asp:DropDownList></div>
         
             <div class="form-group"><asp:Label ID="Label4" runat="server" Text="Reorder Level" CssClass="col-md-4 control-label"></asp:Label></div>
            <div class="col-md-8"><asp:TextBox ID="reorderTextBox" runat="server"  CssClass="col-md-4 control-label"></asp:TextBox></div>
    
            
              <div class="form-group"><asp:Label ID="Label3" runat="server" Text="Available Quantity" CssClass="col-md-4 control-label"></asp:Label></div>
            <div class="col-md-8"><asp:TextBox ID="avilableQuantityTextBox" runat="server" CssClass="col-md-4 control-label"></asp:TextBox></div>
            
              <div class="form-group"><asp:Label ID="Label5" runat="server" Text="Stock In Quantity" CssClass="col-md-4 control-label"></asp:Label></div>
            <div class="col-md-8"> <asp:TextBox ID="stockInTextBox" runat="server" CssClass="col-md-4 control-label"></asp:TextBox></div>
            
            <div class="btn-group  col-md-offset-3">
                            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                        </div>
             </div>
            </div>
    </div>
            </div>
        </div>
           <br/>  <br/>  <br/>  <br/>   <br/>  <br/> 
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
