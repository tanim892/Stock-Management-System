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
    public partial class UpdateCategoryNameUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int sl = Convert.ToInt32(Request.QueryString["Sl"]);
                Category category = categoryManager.GetCategoryBySl(sl);
                if (category != null)
                {
                    LoadFormWithCategory(category);
                }

            }
          

        }

        private void LoadFormWithCategory(Category category)
        {
            slHiddenField.Value = category.Sl.ToString();
            nameTextBox.Text = category.Name;
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            Category category = new Category();
            category.Sl = Convert.ToInt32(slHiddenField.Value);
            category.Name = nameTextBox.Text;
            outputMsgLabel.Text = categoryManager.Update(category);

        }
    }
}