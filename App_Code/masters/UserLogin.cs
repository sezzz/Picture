using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserLogin
/// </summary>
public class UserLogin
{
    int _Id;
    string _UserName;
    string _Email;
    string _Password;
    string _Mobile;

    public UserLogin()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public UserLogin(int ID)
    {
        DataSet ds = new DataSet();
        Connection c = new Connection();
        ds = c.GetDataset("Select * from customber_master where int_Id=" + ID);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HasValue = true;
            _Id = ID;
            _UserName = ds.Tables[0].Rows[0]["var_Name"].ToString();
            _Email = ds.Tables[0].Rows[0]["var_Email"].ToString();
            _Password = ds.Tables[0].Rows[0]["var_Password"].ToString();
            _Mobile = ds.Tables[0].Rows[0]["var_mobile"].ToString();
        }
        else
        {
            HasValue = false;
        }
    }

    public UserLogin(string Email, string Password)
    {
        DataSet ds = new DataSet();
        Connection c = new Connection();
        ds = c.GetDataset("Select * from customber_master where var_Email='" + Email + "' and var_Password='" + Password + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            HasValue = true;
            _Id = int.Parse(ds.Tables[0].Rows[0]["int_Id"].ToString());
            _UserName = ds.Tables[0].Rows[0]["var_Name"].ToString();
            _Email = ds.Tables[0].Rows[0]["var_Email"].ToString();
            _Password = ds.Tables[0].Rows[0]["var_Password"].ToString();
            _Mobile = ds.Tables[0].Rows[0]["var_mobile"].ToString();
        }
        else
        {
            HasValue = false;
        }
    }
    public UserLogin(string Password)
    {
        DataSet ds = new DataSet();
        Connection c = new Connection();
        ds = c.GetDataset("Select * from customber_master where var_Password='"+Password+"'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            HasValue = true;
           
            _Id = int.Parse(ds.Tables[0].Rows[0]["int_Id"].ToString());
            _UserName = ds.Tables[0].Rows[0]["var_Name"].ToString();
            _Email = ds.Tables[0].Rows[0]["var_Email"].ToString();
            _Password = ds.Tables[0].Rows[0]["var_Password"].ToString();
            _Mobile = ds.Tables[0].Rows[0]["var_mobile"].ToString();
        }
        else
        {
            HasValue = false;
        }
    }


    public bool Save()
    {
        var postedDate = DateTime.Now;
        Connection c = new Connection();
        c.ExecStatement(@"INSERT INTO customber_master (var_Name,var_Email,var_Password,var_mobile,dt_RegistrationDate) VALUES('" + _UserName + "' ,'" + _Email + "' ,'" + _Password + "' , '" + _Mobile + "','" + postedDate + "') ");
        return true;
    }

    public bool Update()
    {
        Connection c = new Connection();
        c.ExecStatement(@"update customber_master set var_Name='" + _UserName + "',var_Email='" + _Email + "',var_mobile='" +_Mobile + "' where int_Id=" + _Id);
        return true;
    }
    public bool changepassword()
    {
        
        Connection c = new Connection();
        c.ExecStatement(@"update customber_master set var_Password='" + _Password + "' where int_Id=" +Id);
        return true;
    }
   


    #region Properties
    public int Id
    {
        get { return _Id; }
        set { _Id = value; }
    }
    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public string Email
    {
        get { return _Email; }
        set { _Email = value; }
    }
    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }
    public string Mobile
    {
        get { return _Mobile; }
        set { _Mobile = value; }
    }
    public bool HasValue { get; set; }
    #endregion


}