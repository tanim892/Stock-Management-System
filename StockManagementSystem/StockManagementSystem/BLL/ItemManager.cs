using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class ItemManager
    {
        CategoryGateway categoryGateway = new CategoryGateway();
        CompanyGateway companyGateway = new CompanyGateway();
        ItemGateway itemGateway=new ItemGateway();

        public List<Category> GetAllCategory()
        {
            return categoryGateway.GetAllCategories();
        }
        public List<Company> GetAllCompany()
        {

            return companyGateway.GetAllCompany();
        }

        public string ItemSave(Item item)
        {
            if (itemGateway.IsItemExists(item))
            {
                return "Item Name Already Exists ";
            }

            if (itemGateway.ItemSave(item) > 0)
            {
                return "Save successful";
            }
            else
            {
                return "Save failed";
            }
        }
        public List<Item> GetAllItem()
        {
            return itemGateway.GetAllItem();
        }
               
     }
      
    }
