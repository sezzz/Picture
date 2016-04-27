using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int CategoryId = Convert.ToInt32(Session["CategoryId"]);
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
        Session["productId"] = id;
        gvProducts.DataSource = (from a in new Product().GetList().Where(a => a.Id == id)
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
    protected void BtnCtnShopping_Click(object sender, EventArgs e)
    {
        int CategoryId = Convert.ToInt32(Session["CategoryId"]);
        Response.Redirect("product.aspx?id=" +CategoryId);
    }
}