using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void forgetBtn_Click(object sender, EventArgs e)
    {
        
        //Create Dataset to store results and DataAdapter to fill Dataset 
        DataSet dsPwd = new DataSet();

        Connection c = new Connection(); 
       
        dsPwd = c.GetDataset("Select * from change where email='" + txtEmail.Text + "' ");
        
       
        if(dsPwd.Tables[0].Rows.Count > 0 )
        {
            MailMessage loginInfo = new MailMessage();
            loginInfo.To.Add(txtEmail.Text.ToString());
            loginInfo.From = new MailAddress("krishnaagroya328@gmail.com");
            loginInfo.Subject = "Forgot Password Information";

            loginInfo.Body = "email: " + dsPwd.Tables[0].Rows[0]["email"] + "password: " + dsPwd.Tables[0].Rows[0]["password"] + " ";
            loginInfo.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; 
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("krishnaagroya328@gmail.com", "8233444328.kp");
            smtp.Send(loginInfo);
            lblMessage.Text = "Password is sent to you email id,you can now Login";
            txtEmail.Text = string.Empty;
        }
        else
        {
            lblMessage.Text = "Email Address Not Registered";
        }
        

    }
}