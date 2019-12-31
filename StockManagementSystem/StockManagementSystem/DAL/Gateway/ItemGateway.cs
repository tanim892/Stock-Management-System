using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class ItemGateway : CommonGateway
    {
        public int ItemSave(Item item)
        {
            string query = "INSERT INTO ItemSetup VALUES('" + item.CategoryName + "','" + item.CompanyName + "','" +
                           item.ItemName + "','" + item.ReorderLevel + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }

        public bool IsItemExists(Item item)
        {
            string query = "SELECT * FROM ItemSetup WHERE ItemName='" + item.ItemName + "'AND SL='"+item.Sl+"'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            bool isExists = Reader.HasRows;

            Connection.Close();

            return isExists;
        }

        public List<Item> GetAllItem()
        {
            string query = "SELECT * FROM ItemSetup";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Item> Itemlist = new List<Item>();
            while (Reader.Read())
            {
                Item item = new Item();
                item.Sl = Convert.ToInt32(Reader["Sl"]);
               
                item.ItemName = Reader["ItemName"].ToString();

                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLevel"]);

                Itemlist.Add(item);

            }
            Reader.Close();
            Connection.Close();
            return Itemlist;
        }
     
    }
}