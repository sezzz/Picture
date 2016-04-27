using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int categoryId = 0;
        if (!IsPostBack)
        {

            var list= (from a in new Category().GetList() select new { a.Id, a.CategoryName }).ToList();
            ddlCategory.DataSource = list.ToList();
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();
            if (Request.QueryString.Count > 0)
            {
                categoryId = Convert.ToInt32(Request.QueryString[0]);
                Category get = new Category(categoryId);
                txtCategory.Text = get.CategoryName;
                btnupdate.Visible = true;
                btnSave.Visible = false;
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(ddlCategory.SelectedValue);
        Category add = new Category(Id);
        add.CategoryName = txtCategory.Text;
        bool sav = add.Save();
        if (sav == true)
        {
            txtCategory.Text = string.Empty;
            ddlCategory.DataSource = (from a in new Category().GetList()
                                      select new
                                      {
                                          a.Id,
                                          a.CategoryName
                                      });
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int categoryId = Convert.ToInt32(Request.QueryString[0]);
        Category update = new Category();
        update.CategoryName = txtCategory.Text;
        update.Update(categoryId);
        Session.RemoveAll();
        txtCategory.Text = string.Empty;
        Response.Redirect("../Admin/view_Category.aspx");
    }
}