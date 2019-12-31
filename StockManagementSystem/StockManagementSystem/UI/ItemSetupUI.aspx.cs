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
    public partial class ItemSetupUI : System.Web.UI.Page
    {
        CategoryManager categoryManager=new CategoryManager();
        CompanyManager companyManager=new CompanyManager();
        ItemManager itemManager=new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                categoryDropDownList.DataSource = categoryManager.GetAllCategory();
                categoryDropDownList.DataTextField = "Name";
                categoryDropDownList.DataValueField = "Sl";
                categoryDropDownList.DataBind();

                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Sl";
                companyDropDownList.DataBind();
            }
           
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Item item=new Item();
            item.ItemName = itemTextBox.Text;
            item.ReorderLevel = Convert.ToInt32(reorderTextBox.Text);
            item.CategoryName = categoryDropDownList.SelectedValue;
            item.CompanyName = companyDropDownList.SelectedValue;

            outputMsgLabel.Text = itemManager.ItemSave(item);
        }

       
    }
}