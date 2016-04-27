using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
      
            gvCategory.DataSource = (from a in new Category().GetList()
                                    select new
                                     {
                                      a.Id,
                                      a.ParentId,
                                      a.CategoryName
                            
                                     }).ToList();
            gvCategory.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCategory.PageIndex = e.NewPageIndex;
        gvCategory.DataBind();
    }

    protected void gvCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            int categoryId = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "edt")
            {
                Response.Redirect("../Admin/AddCategory.aspx?id=" + categoryId);
            }
            else if (e.CommandName == "del")
            {
                Category categorydelete = new Category();
                categorydelete.Delete(categoryId);
                gvCategory.DataSource = (from a in new Category().GetList()
                                         select new
                                         {
                                             a.Id,
                                             a.ParentId,
                                             a.CategoryName

                                         }).ToList();
                gvCategory.DataBind();
            }
        }
        catch (Exception ex)
        {
        }
    }
}