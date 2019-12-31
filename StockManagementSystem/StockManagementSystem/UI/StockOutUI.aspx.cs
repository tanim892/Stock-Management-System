﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystem.BLL;
using System.Data;
using StockManagementSystem.DAL;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.UI
{
    public partial class StockOutUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        StockOutManager stockOutManager = new StockOutManager();
        ItemManager itemManager = new ItemManager();
        Item aItem = new Item();
        public static int Qty=0;
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
                availableQty.Enabled = false;
            }

        }
        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            itemDropDownList.SelectedItem.Value = "-1";
            itemDropDownList.SelectedItem.Text = "----Please Select -----";
            List<Item> aItem = new List<Item>();

            //aItem = itemManager.GetAllItem().Where(m => m.CompanyName == companyDropDownList.SelectedItem.Value).ToList();

            ListItem liItem = new ListItem("--- Select Item---", "-1");

            if (aItem.Count > 0)
            {
                reorderTextBox.Text = "";
                availableQty.Text = "";
                stockInTextBox.Text = "";
                itemDropDownList.DataSource = aItem;
                itemDropDownList.DataTextField = "ItemName";
                itemDropDownList.DataValueField = "Sl";
                itemDropDownList.DataBind();

                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.SelectedIndex = 0;
                itemDropDownList.Enabled = true;
            }

            else
            {
                reorderTextBox.Text = "";
                availableQty.Text = "";
                stockInTextBox.Text = "";
     
              
                itemDropDownList.Enabled = false;
                reorderTextBox.Enabled = false;
                availableQty.Enabled = false;
            }
        }


        protected void addButton_Click(object sender, EventArgs e)
        {
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("Item");
            dataTable.Columns.Add("Company");
            dataTable.Columns.Add("Quantity");
            DataRow dataRow = null;
            if (ViewState["Item"] != null)
            {
                for (int i = 0; i < 1; i++)
                {
                    dataTable = (DataTable)ViewState["Item"];
                    if (dataTable.Rows.Count > 0)
                    {
                        dataRow = dataTable.NewRow();

                        dataRow["Item"] = itemDropDownList.SelectedItem.ToString();
                        dataRow["Company"] = companyDropDownList.SelectedItem.ToString();
                        dataRow["Quantity"] = stockInTextBox.Text;


                        dataTable.Rows.Add(dataRow);

                        stockOutGridView.DataSource = dataTable;
                        stockOutGridView.DataBind();
                        stockInTextBox.Text = "";
                        reorderTextBox.Text = "";
                        availableQty.Text = "";
                    }
                }
            }
            else
            {
                dataRow = dataTable.NewRow();

                dataRow["Item"] = itemDropDownList.SelectedItem.ToString();
                dataRow["Company"] = companyDropDownList.SelectedItem.ToString();
                dataRow["Quantity"] = stockInTextBox.Text;
                dataTable.Rows.Add(dataRow);
                stockOutGridView.DataSource = dataTable;
     
             
                stockOutGridView.DataBind();


                itemDropDownList.SelectedItem.Value = "-1";
                itemDropDownList.SelectedItem.Text = "--Please Select--";
                stockInTextBox.Text = "";
                reorderTextBox.Text = "";
                availableQty.Text = "";
            }
            ViewState["Item"] = dataTable;

            int qty = 0;
            foreach (GridViewRow g1 in stockOutGridView.Rows)
            {
                qty += Int32.Parse(g1.Cells[3].Text);
            }
            msgQty.Text = "Total:" + qty;
        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            //aItem = itemManager.GetReorderLabel(Int32.Parse(itemDropDownList.SelectedItem.Value));
            //reorderTextBox.Text = aItem.ReorderLevel.ToString();
            //availableQty.Text = aItem.AvailableQuantity.ToString();


        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow g1 in stockOutGridView.Rows)
                {
                StockOut item = new StockOut();

                item.ItemName = g1.Cells[1].Text;
                item.StockOutQuantity = Int32.Parse(g1.Cells[3].Text);
                item.Status = "Sell";
                //outputMsgLabel.Text=stockOutManager.StockOutUpdate(item);
            }

            itemDropDownList.SelectedItem.Value = "-1";
            itemDropDownList.SelectedItem.Text = "--Please Select--";
            stockInTextBox.Text = "";
            reorderTextBox.Text = "";
            availableQty.Text = "";
            
        }

        protected void btnDamage_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow g1 in stockOutGridView.Rows)
            {
                StockOut item = new StockOut();

                item.ItemName = g1.Cells[1].Text;
                item.StockOutQuantity = Int32.Parse(g1.Cells[3].Text);
                item.Status = "Damage";
                //outputMsgLabel.Text = stockOutManager.StockOutUpdate(item);
            }
        }

        protected void btnLost_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow g1 in stockOutGridView.Rows)
            {
                StockOut item = new StockOut();

                item.ItemName = g1.Cells[1].Text;
                item.StockOutQuantity = Int32.Parse(g1.Cells[3].Text);
                item.Status = "Lost";
                //outputMsgLabel.Text = stockOutManager.StockOutUpdate(item);
            }
        }
    }
}