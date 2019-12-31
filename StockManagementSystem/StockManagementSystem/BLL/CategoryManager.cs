using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class CategoryManager
    {
        CategoryGateway categoryGateway=new CategoryGateway();

        public string CategorySave(Category category)
        {
            if (categoryGateway.IsCategoryExists(category.Name))
            {
                return "Category Already Exists ";
            }
            else
            {
                int rowAffect = categoryGateway.CategorySave(category);
                if (rowAffect > 0)
                {
                    return "Saved Sucessfull";
                }
                else
                {
                    return "Save failed";
                } 
            }
            
         }


        public List<Category> GetAllCategory()
        {
            return categoryGateway.GetAllCategories();
        }

        public Category GetCategoryBySl(int sl)
        {
            return categoryGateway.GetCategoryBySl(sl);

        }
        public string Update(Category category)
        {
            int rowAffect = categoryGateway.Update(category);
            if (rowAffect > 0)
            {
                return "Update Sucessfull";
            }
            else
            {
                return "Update Failed";
            }
        }

    }
}