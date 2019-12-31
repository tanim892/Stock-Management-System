<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatagorySetupUI.aspx.cs" Inherits="StockManagementSystem.UI.CatagorySetupUI" EnableEventValidation = "false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Catagory SetUp</title>
    <link href="../style/CategorySetUp.css" rel="stylesheet" />
</head>
<body>
<div id="container" >
    <form id="form1" runat="server">
        
        <h3 style="text-align: center; font-family: Georgia, serif; font-size: 50px; margin-top: 30px; background-color: aquamarine">STOCK MANAGEMENT SYSTEM</h3>
          
    
          <h4 style="text-align: center; font-family:inherit; font-size: 30px">Category Setup</h4>
                                                                 

            <div class="inner-container">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="outputMsgLabel" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
                    </tr>
                    
                    

            </table>
               
                <asp:GridView ID="catagoryGridView" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        
                        
                         <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                <asp:HiddenField ID="slHiddenField" runat="server" value='<%#Eval("Sl") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="updateButton" runat="server" OnClick="updateButton_OnClick">Update</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div><!-- inner Container Ends here-->
     
    </form>
    
            <div class="footer">
             
                  <a href="HomeUI.aspx">Back to Home</a>
                                    
            </div>
            
        </div><!--Container Ends here-->
             
                 

</body>
</html>