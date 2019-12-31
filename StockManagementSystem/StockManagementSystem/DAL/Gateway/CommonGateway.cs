﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementSystem.DAL.Gateway
{
    public class CommonGateway
    {
       

        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }
        public string Query { get; set; }
        public string connectionstring = WebConfigurationManager.ConnectionStrings["StockManagementSystem"].ToString();

        public CommonGateway()
        {
            Connection = new SqlConnection(connectionstring);
            Command = new SqlCommand();
        }

    }
}