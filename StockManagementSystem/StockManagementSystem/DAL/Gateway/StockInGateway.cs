using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class StockInGateway:CommonGateway
    {
        public int StockSave(StockIn stockIn)
        {
            string query = "INSERT INTO StockIn VALUES ('" + stockIn.CompanyId + "','" + stockIn.ItemId + "','" +
                           stockIn.ReorderLevel + "','" + stockIn.AvailableQuantity + "','"+stockIn.ItemName+"')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }

        public List<Item> GetItemWithCompany(int companyId)
        {
            string query = "SELECT * FROM Item WHERE CompanyName='" + companyId + "'";
            SqlCommand command = new SqlCommand(query, Connection);
            Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<Item> items = new List<Item>();
            while (reader.Read())
            {
                Item item = new Item();
                item.Sl = Convert.ToInt32(reader["Sl"]);
                item.ItemName = reader["ItemName"].ToString();
                item.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);

                items.Add(item);
            }

            reader.Close();
            Connection.Close();
            return items;
        }

        public StockIn GetSignleStock(int stockId)
        {
            string query = "select * from StockIn where ItemId='" + stockId + "'";
            SqlCommand command = new SqlCommand(query, Connection);
            Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            StockIn stockIn = null;
            if (reader.HasRows)
            {
                reader.Read();
                stockIn = new StockIn();
                stockIn.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"]);
                stockIn.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
            }
            reader.Close();
            Connection.Close();
            return stockIn;
        }

        public bool IsItemExists(StockIn stockIn)
        {
            string query = "SELECT * FROM StockIn WHERE CompanyId='"+stockIn.CompanyId+"'AND ItemId='" +stockIn.ItemId+ "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            bool isExists = Reader.HasRows;

            Connection.Close();

            return isExists;
        }

     

        public int StockUpdate(StockIn stockIn)
        {
            string query = "Update StockIn SET AvailableQuantity='" + stockIn.StockInQuantity + "' WHERE CompanyId='"+stockIn.CompanyId+"AND ItemId=" + stockIn.ItemId;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }

    }
}