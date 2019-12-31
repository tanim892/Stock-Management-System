using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class CreateAccountGateway : CommonGateway
    {
        public int Create(CreateAccount createAccount )
        {
            string query = "INSERT INTO Login VALUES('" +createAccount.Username+ "', '"+createAccount.Email+"','"+createAccount.Password+"')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowaffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowaffect;
        }
        public bool IsUsernameExists(string create)
        {
            string query = "SELECT * FROM Login WHERE Username='" + create + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            bool isExists = Reader.HasRows;
            Reader.Close();
            Connection.Close();

            return isExists;
        }
    }
}