using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class StockInManager
    {
        StockInGateway stockInGateway = new StockInGateway();
        //public string StockSave(StockIn stockIn)
        //{
        //    int rowAffect = stockInGateway.StockSave(stockIn);
        //    if (rowAffect > 0)
        //    {
        //        return "Saved Sucessfull";
        //    }
        //    else
        //    {
        //        return "Save Failed";
        //    }
        //}

        public List<Item> GetItemWithCompany(int companyId)
        {
            return stockInGateway.GetItemWithCompany(companyId);
        }

        public StockIn GetStockIn(int stockId)
        {
            return stockInGateway.GetSignleStock(stockId);
        }

        public string IsItemExists(StockIn stockIn)
        {
            if (stockInGateway.IsItemExists(stockIn))
            {
                return "Item already exists";
            }
            else
            {
                return "";
            }
        }


        public string StockSaveUpdate(StockIn stockIn)
        {
            if (stockInGateway.StockUpdate(stockIn)>0)
            {
                int available = stockIn.AvailableQuantity;
                stockIn.StockInQuantity += available;
                int rowAffect = stockInGateway.StockUpdate(stockIn);

                if (rowAffect > 0)
                {
                    return "Stock Update";
                }
                else
                {
                    return "Update Failed";
                }

            }

            else
            {
                int rowAffect = stockInGateway.StockSave(stockIn);
                if (rowAffect > 0)
                {
                    return "Stock Saved";
                }
                else
                {
                    return "Save Failed";
                }

            }

        }


       



    }
}