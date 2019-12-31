using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class CategoryGateway : CommonGateway
    {
        public int CategorySave(Category category)
        {
            string query = "INSERT INTO CategorySetup VALUES('" + category.Name + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }

        public List<Category> GetAllCategories()
        {
            List<Category> categories = new List<Category>();
            
            {
                string query = "SELECT * FROM CategorySetup";
                Command = new SqlCommand(query, Connection);
                Connection.Open();
                Reader = Command.ExecuteReader();
                
                while (Reader.Read())
                {
                    Category category = new Category();
                    category.Sl = Convert.ToInt32(Reader["Sl"]);
                    
                    category.Name = Reader["Name"].ToString();

                    categories.Add(category);

                }
                Reader.Close();
                Connection.Close();
                return categories;
            }
        }

        public bool IsCategoryExists(string category)
        {
            string query = "SELECT * FROM CategorySetup WHERE Name='" + category + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            bool isExists = Reader.HasRows;

            Connection.Close();

            return isExists;
        }

        public Category GetCategoryBySl(int sl)
        {
            string query = "SELECT * FROM CategorySetup WHERE Sl=" +sl;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Category category = null;
            Reader.Read();
            if (Reader.HasRows)
            {
                category = new Category();
                category.Sl = Convert.ToInt32(Reader["Sl"]);
                
                category.Name = Reader["Name"].ToString();

                Connection.Close();
               
            }
            return category;
           
        }

        public int Update(Category category)
        {
            string query = "UPDATE CategorySetup SET Name='" + category.Name + "' WHERE Sl=" + category.Sl;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowafect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowafect;
        }


    }
}