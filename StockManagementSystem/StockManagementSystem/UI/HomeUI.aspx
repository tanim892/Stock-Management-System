<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUI.aspx.cs" Inherits="StockManagementSystem.UI.HomeUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="../style/HomeUI.css" rel="stylesheet" />
</head>
<body>
 <div id="container">
           
        <form id="form1" runat="server">
        
        
            
                <h3 style="text-align: center; font-family: Georgia, serif; font-size: 50px; margin-top: 30px; background-color: aquamarine">STOCK MANAGEMENT SYSTEM</h3>
                
                                  
            

            <div class="nav">
               
                <ul>
                    
                    <li>  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CatagorySetupUI.aspx">Catagory Setup</asp:HyperLink></li>  

                    <li>  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="CompanySetupUI.aspx">Company Setup</asp:HyperLink></li> 
                        
                    <li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="ItemSetupUI.aspx">Item Setup</asp:HyperLink></li> 
                        
                    <li>  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="StockInUI.aspx">Stock In</asp:HyperLink></li> 
                        
                    <li>  <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="StockOutUI.aspx">Stock Out</asp:HyperLink></li> 
                        
                    <li>    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="SearchViewItemUI.aspx">Search View Item</asp:HyperLink></li> 
                        
                    <li>   <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="ViewSalesTwoDateUI.aspx">View Sales Two Date</asp:HyperLink></li> 
                        
                </ul>

             </div> <!--Navigation Ends here-->

           </form>
  </div>   <!--Container Ends Here-->

              
          
   
</body>
</html>
