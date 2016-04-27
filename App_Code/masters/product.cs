using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for product
/// </summary>
public class Product
{
    int _Id;
    string _productName;
    int _categoryId;
    int _prise;
    string _description;
    string _image;

    #region PROPERTIES
    public int Id
    {
        get { return _Id; }
        set { _Id = value; }
    }
    public string productName
    {
        get { return _productName; }
        set { _productName = value; }
    }
    public string description
    {
        get { return _description; }
        set { _description = value; }
    }
    public string image
    {
        get { return _image; }
        set { _image = value; }
    }
    public int prise
    {
        get { return _prise; }
        set { _prise = value; }
    }
    public int categoryId
    {
        get { return _categoryId; }
        set { _categoryId = value; }
    }

    public bool HasValue { get; set; }
    #endregion

    public Product()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Product(int ID)
    {
        DataSet ds = new DataSet();
        Connection c = new Connection();
        ds = c.GetDataset("Select * from product_Detail where int_Id=" + ID);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HasValue = true;
            _Id = ID;
            _productName = ds.Tables[0].Rows[0]["var_ProductName"].ToString();
            _categoryId = int.Parse(ds.Tables[0].Rows[0]["int_CategoryId"].ToString());
            _description = ds.Tables[0].Rows[0]["var_Description"].ToString();
            _prise = int.Parse(ds.Tables[0].Rows[0]["int_SellingPrise"].ToString());
            _image = (ds.Tables[0].Rows[0]["image"].ToString());
        }
        else
        {
            HasValue = false;
        }
    }

    public int Save()
    {
        Connection con = new Connection();
        DataSet ds = new DataSet();
        ds = con.GetDataset(@"INSERT INTO product_Detail  (var_ProductName,int_CategoryId,int_SellingPrise,var_Description,image) 
                 VALUES('" + _productName + "','" + _categoryId + "','" + _prise + "','" + _description + "','" + _image + "'); select @@identity ");
        return int.Parse(ds.Tables[0].Rows[0][0].ToString());
    }

    // Update data from database using productId
    public bool Update(int ProductID)
    {
        Connection c = new Connection();
        c.GetDataset(@"UPDATE product_Detail SET var_ProductName='" + _productName + "',int_CategoryId='" + _categoryId + "',int_SellingPrise='" + _prise + "',var_Description='" + _description + "' where int_Id=" + ProductID);
        return true;
    }



    public List<Product> _GetList(string Query)
    {
        List<Product> _List = new List<Product>();
        Connection con = new Connection();
        DataSet ds = new DataSet();
        ds = con.GetDataset(Query);
        _List = ds.Tables[0].AsEnumerable().Select(raw => new Product
        {
            HasValue = true,
            _Id = int.Parse(raw["int_Id"].ToString()),
            _productName = raw["var_ProductName"].ToString(),
            _categoryId = int.Parse(raw["int_CategoryId"].ToString()),
            _description = raw["var_Description"].ToString(),
            _prise = int.Parse(raw["int_SellingPrise"].ToString()),
            _image = raw["image"].ToString()
        }).ToList();

        return _List;
    }
    public List<Product> GetList()
    {
        return _GetList(@"select * from product_Detail");
    }


    public bool Delete(int productId)
    {
        Connection c = new Connection();
        c.GetDataset("delete from product_Detail where int_Id=" + productId);
        return true;
    }

}