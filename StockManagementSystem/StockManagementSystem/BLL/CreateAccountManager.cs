using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class CreateAccountManager
    {
        CreateAccountGateway createAccountGateway = new CreateAccountGateway();

        public string Create(CreateAccount createAccount)
        {
            if (createAccountGateway.IsUsernameExists(createAccount.Username))
            {
                return "Username already exists";
            }
            else
            {
                int rowAffect = createAccountGateway.Create(createAccount);
                if (rowAffect > 0)
                {
                    return "Create successful";
                }
                else
                {
                    return "Create failed";
                } 
            }
           
        }
    }
}