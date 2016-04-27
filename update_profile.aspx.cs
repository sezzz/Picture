using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] != null)
        {
            if (!IsPostBack)
            {
                int Id = Convert.ToInt32(Session["userId"]);
                UserLogin login = new UserLogin(Id);
                txtName.Text = login.UserName;
                txtEmail.Text = login.Email;
                txtMobile.Text = login.Mobile;
            }
        }
        else
        {
            Response.Redirect("sign.aspx");
        }

        //rptCategories.DataSource = (from a in new Category().GetList().Where(a => a.Id != 1)
        //                            select new
        //                            {
        //                                a.Id,
        //                                a.ParentId,
        //                                a.CategoryName

        //                            }).ToList();
        //rptCategories.DataBind();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Session["userId"]);
        UserLogin update = new UserLogin(Id);
        update.UserName = txtName.Text;
        update.Email = txtEmail.Text;
        update.Mobile = txtMobile.Text;
      bool save=  update.Update();
      if (save == true)
      {

          Alert(this.Page, "Updated Sucessfully");

      }

    }
    public void Alert(Page page, string message)
    {
        string jsString = "alert('" + message + "');";
        ScriptManager.RegisterStartupScript(page, page.GetType(),
                "MyApplication",
                jsString,
                true);
    }
}