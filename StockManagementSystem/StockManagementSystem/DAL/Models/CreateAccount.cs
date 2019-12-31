using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystem.DAL.Models
{
    public class CreateAccount
    {
        public string Username { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}