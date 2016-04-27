using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            gvProducts.DataSource = (from a in new Product().GetList()
                                     select new
                                     {
                                         a.Id,
                                         a.productName,
                                         a.categoryId,
                                         a.description,
                                         a.image,
                                         a.prise,
                                         CategoryName = new Category(a.categoryId).CategoryName
                                     }).ToList();
            gvProducts.DataBind();
        }
    }
    protected void productGridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProducts.PageIndex = e.NewPageIndex;
        gvProducts.DataBind();
    }
    protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int productID = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName.ToLower() == "edt")
            {
                Response.Redirect("../Admin/product.aspx?pid=" + productID);
            }
            else if (e.CommandName.ToLower() == "del")
            {
                Product delete = new Product();
                delete.Delete(productID);
                gvProducts.DataSource =(from a in new Product().GetList()
                                     select new
                                     {
                                         a.Id,
                                         a.productName,
                                         a.categoryId,
                                         a.description,
                                         a.image,
                                         a.prise,
                                         CategoryName = new Category(a.categoryId).CategoryName
                                     }).ToList();;
                gvProducts.DataBind();
            }
            else
            {

            }
        }
        catch (Exception ex)
        {

        }
    }
}