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
    public partial class StockInUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        StockInManager stockManager = new StockInManager();
        ItemManager itemManager = new ItemManager();
        Item aItem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Sl";
                companyDropDownList.DataBind();

                ListItem liComapny = new ListItem("--- Select Item---", "-1");
                companyDropDownList.Items.Insert(0, liComapny);

                ListItem liItem = new ListItem("--- Select Item---", "-1");
                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.Enabled = false;
                reorderTextBox.Enabled = false;
                avilableQuantityTextBox.Enabled = false;
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            StockIn stockIn = new StockIn();
            stockIn.CompanyId = companyDropDownList.SelectedItem.Value;
            stockIn.ItemId = Int32.Parse(itemDropDownList.SelectedItem.Value);
            stockIn.ItemName = itemDropDownList.SelectedItem.Text;
            stockIn.AvailableQuantity = Int32.Parse(avilableQuantityTextBox.Text);
            stockIn.StockInQuantity = Int32.Parse(stockInTextBox.Text);

            outputMsgLabel.Text = stockManager.StockSaveUpdate(stockIn);

        }
        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<Item> aItem = new List<Item>();

            aItem = itemManager.GetAllItem().Where(m => m.CompanyName == companyDropDownList.SelectedItem.Value).ToList();

            ListItem liItem = new ListItem("--- Select Item---", "-1");

         
                itemDropDownList.DataSource = aItem;
                itemDropDownList.DataTextField = "ItemName";
                itemDropDownList.DataValueField = "Sl";
                itemDropDownList.DataBind();

                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.SelectedIndex = 0;
                itemDropDownList.Enabled = true;
         


        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            //aItem = itemManager.(Int32.Parse(itemDropDownList.SelectedItem.Value));


            reorderTextBox.Text = aItem.ReorderLevel.ToString();
            avilableQuantityTextBox.Text = aItem.AvailableQuantity.
        }
    }
}