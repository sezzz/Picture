using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Admin_product : System.Web.UI.Page
{
    int ProductID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //category add = new category();
            //ddlCategory.DataSource = add.dropdownCategory();
            //ddlCategory.DataTextField = "var_CategoryName";
            //ddlCategory.DataValueField = "int_Id";           
            //ddlCategory.DataBind();

            ddlCategory.DataSource = (from a in new Category().GetList().Where(a=>a.Id!=1) select new { a.Id, a.CategoryName }).ToList();
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();

            if (Request.QueryString.Count > 0)
            {
                ProductID = Convert.ToInt32(Request.QueryString[0]);
                Product get = new Product(ProductID);
                txtProductName.Text = get.productName;
                txtPrise.Text = get.prise.ToString();
                txtArea.Text = get.description;
                ddlCategory.SelectedValue = get.categoryId.ToString();
                btnupdate.Visible = true;
                btnSave.Visible = false;
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (fileupload1.HasFile)
            {

                String FileExtension = Path.GetExtension(fileupload1.FileName);

                Product add = new Product();
                add.productName = txtProductName.Text;
                add.prise = Convert.ToInt32(txtPrise.Text);
                add.description = txtArea.Text;
                add.categoryId = Convert.ToInt32(ddlCategory.SelectedValue); ;
                add.image = FileExtension;
                int NewId = add.Save();
                string filename = Path.GetFileName(fileupload1.PostedFile.FileName);
                string path = Server.MapPath("data/" + NewId + FileExtension);
                fileupload1.SaveAs(path);
                resetcontrol();
            }
        }
        catch (Exception ex)
        {

        }
    }

    public void resetcontrol()
    {
        txtProductName.Text = string.Empty;
        txtPrise.Text = string.Empty;
        txtArea.Text = string.Empty;
        ddlCategory.ClearSelection();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        ProductID = Convert.ToInt32(Request.QueryString[0]);
        Product update = new Product();
        update.productName = txtProductName.Text;
        update.prise = Convert.ToInt32(txtPrise.Text);
        update.description = txtArea.Text;
        update.categoryId = Convert.ToInt32(ddlCategory.SelectedValue);
        update.Update(ProductID);
        Session.RemoveAll();
        resetcontrol();
        Response.Redirect("../Admin/view_product.aspx");
    }
}