using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystem.BLL;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.UI
{
    public partial class NewAccountUI : System.Web.UI.Page
    {
        CreateAccountManager createAccountManager = new CreateAccountManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            CreateAccount createAccount = new CreateAccount();
            createAccount.Username = usernameTextBox.Text;
            createAccount.Email = emailTextBox.Text;
            createAccount.Password = passwordTextBox.Text;

            outputMsgLabel.Text = createAccountManager.Create(createAccount);
        }
    }
}