using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manyawar : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            UserLogin login = new UserLogin();
            show.Text = "Welcome" + " " + Session["user"].ToString() + " " + "/logout";
        }
        else
        {
            show.Text = "Login / Sign Up";

        }

        rptCategories.DataSource = (from a in new Category().GetList().Where(a => a.Id != 1)
                                    select new
                                    {
                                        a.Id,
                                        a.ParentId,
                                        a.CategoryName

                                    }).ToList();
        rptCategories.DataBind();
       

      
    }

}
