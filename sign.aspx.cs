using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=KRISHNA; user id=sa; password=kp#123; database=kp");
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }
    protected void login_Click(object sender, EventArgs e)
    {      
     
        UserLogin usr = new UserLogin(txtuser.Text, txtpassword.Text);

        if (usr.HasValue)
        {
            Session["user"] = usr.UserName;
            Session["userId"] = usr.Id;
            Response.Redirect("myaccount.aspx");
            
        }
    }
    //public void save()
    //{

    //    //        int IsSaved = ExecuteNonQuery(@"INSERT INTO user_table (var_User,var_txtpsw,var_TxtRPsw,int_mobile ) 
    //    //                VALUES( '" + User.Text + "' ,'" + txtpsw.Text + "' , '" + TxtRpsw.Text + "','" + txtMobile.Text + "')");

    //    //        if (IsSaved == 1)
    //    //        {
    //    //            lblM.Text = "Saved SucceesFully";
    //    //            resetControls();
    //    //        }
    //    //        else
    //    //        {
    //    //            lblM.Text = "Error";
    //    //        }

        

    //}
    //public int ExecuteNonQuery(string Query)
    //{
    //    int success = 0;
    //    SqlCommand cmd = new SqlCommand(Query, con);
    //    con.Open();
    //    success = cmd.ExecuteNonQuery();
    //    con.Close();

    //    return success;
    //}
    public void resetControls()
    {
        txtName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtPswdAgain.Text = string.Empty;
        txtMobile.Text = string.Empty;
        txtPswd.Text = string.Empty;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        UserLogin login = new UserLogin();
        login.UserName = txtName.Text;
        login.Email = txtEmail.Text;
        login.Password = txtPswd.Text;
        login.Mobile = txtMobile.Text;
        bool sav=login.Save();
        resetControls();
    }
}