using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class CompanyManager
    {
        CompanyGateway companyGateway = new CompanyGateway();

        public string CompanySave(Company company)
        {
            if (companyGateway.IsCompanyExists(company.Name))
            {
                return "Company Name Already Exists ";
            }
            else
            {
                int rowAffect = companyGateway.CompanySave(company);
                if (rowAffect > 0)
                {
                    return "Saved Sucessfull";
                }
                else
                {
                    return "Save Failed";
                }
            }

        }

        public List<Company> GetAllCompany()
        {

            return companyGateway.GetAllCompany();
        }

    
    }
}