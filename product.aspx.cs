using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            int CategoryId = Convert.ToInt32(Request.QueryString["id"].ToString());
            Session["CategoryId"] = CategoryId;
            rptCategories.DataSource = (from a in new Category().GetList().Where(a => a.Id == CategoryId)
                                        select new
                                        {
                                            a.Id,
                                            a.ParentId,
                                            a.CategoryName

                                        }).ToList();
            rptCategories.DataBind();
        }
        if (Request.QueryString.Count > 0)
        {
            int Id = Convert.ToInt32(Request.QueryString["id"].ToString());
            productRepeat.DataSource = (from a in new Product().GetList().Where(a => a.categoryId == Id)
                                        select new
                                        {
                                            a.Id,
                                            a.categoryId,
                                            a.image,
                                            a.prise,
                                            a.productName,
                                            a.description
                                          
                                        }).ToList();
            productRepeat.DataBind();

        }
    }
   
}