using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("sign.aspx");
        }
    }
   
    protected void btnSave_Click1(object sender, EventArgs e)
    {

        UserLogin login = new UserLogin(txtPassword.Text);
        if (login.HasValue)
        {
            login.Password = txtNewPassword.Text;
            login.changepassword();
            Alert(this.Page, "Update Sucessfully");
        }
        else
        {
            Alert(this.Page, "Old Password Not Match");
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