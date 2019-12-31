using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystem.UI
{
    public partial class LogInUI : System.Web.UI.Page
    {
        SqlCommand command = new SqlCommand();
        SqlConnection connection = new SqlConnection();
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet dataSet = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=Stock_DB;Integrated Security=True";
            connection.Open();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            command.CommandText = "SELECT * FROM Login WHERE Username = '" + usernameTextBox.Text +
                                  "' AND Password = '" + passwordTextBox.Text + "'";
            command.Connection = connection;
            adapter.SelectCommand = command;
            adapter.Fill(dataSet, "Login");
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("HomeUI.aspx");
            }
            else
            {
                outputMsgLabel.Text = "You have entered a wrong username or password";
            }
        }
    }
}