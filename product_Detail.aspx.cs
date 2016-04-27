using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            Session["ID"] = Convert.ToInt32(Request.QueryString["id"].ToString());
            int Id = Convert.ToInt32(Session["ID"]);
            productRepeat.DataSource = (from a in new Product().GetList().Where(a => a.Id == Id)
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
        else
        {
            Response.Redirect("Default.aspx");
        }
    }




    protected void Btn_Click1(object sender, ImageClickEventArgs e)
    {
        int IID = Convert.ToInt32(Request.QueryString["id"].ToString());
        Response.Redirect("viewcart.aspx?id=" + IID);
    }

}