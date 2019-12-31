using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class StockOutManager
    {
        //StockOutGateway stockOutGateway = new StockOutGateway();
        //StockInGateway stockInGateway = new StockInGateway();



        //public string StockOutUpdate(StockOut stock)
        //{
        //    Item model = new Item();
        //    model = stockOutGateway.GetItemInfo(stock.ItemName);
        //    stock.ItemId = model.Sl;
        //    stock.CompanyId = model.CompanyName;

        //    int available = model.AvailableQuantity;
        //    available = available - stock.StockOutQuantity;
        //    model.AvailableQuantity = available;
        //    int rowAffect = stockOutGateway.StockOutSave(stock);

        //         stockOutGateway.StockUpdate(available, model.Sl); 

        //    if (rowAffect > 0)
        //        {
        //            return "Stock Updated";
        //        }
        //        else
        //        {
        //            return "Update Failed";
        //        }

        //    }
    }
}