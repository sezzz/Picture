using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for CatgoryAdd
/// </summary>
public class Category
{
    int _Id;
    string _CategoryName;
    int _ParentId;

    public Category()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Category(int ID)
    {
        DataSet ds = new DataSet();
        Connection c = new Connection();
        ds = c.GetDataset("Select * from Category_Detail where int_Id=" + ID);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HasValue = true;
            _Id = ID;
            _CategoryName = ds.Tables[0].Rows[0]["var_CategoryName"].ToString();

        }
        else
        {
            HasValue = false;
        }
    }

    //private List<Category> _GetList(string Query)
    //{
    //    List<Category> _list = new List<Category>();
    //    Connection c = new Connection();
    //    DataSet ds = new DataSet();
    //    ds = c.GetDataset(Query);
    //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
    //    {
    //        Category obj = new Category(int.Parse(ds.Tables[0].Rows[i][0].ToString()));
    //        _list.Add(obj);
    //    }
    //    return _list;
    //}
    public List<Category> _GetList(string Query)
    {
        List<Category> _List = new List<Category>();
        Connection con = new Connection();
        DataSet ds = new DataSet();
        ds = con.GetDataset(Query);
        _List = ds.Tables[0].AsEnumerable().Select(raw => new Category
        {
            HasValue = true,
            _Id = int.Parse(raw["int_Id"].ToString()),
            _CategoryName= raw["var_CategoryName"].ToString(),
            
            _ParentId = int.Parse(raw["int_Parent_id"].ToString()),
            
        }).ToList();

        return _List;
    }

    public List<Category> GetList()
    {
        return _GetList("SELECT * FROM Category_Detail");
    }
   

    // data Save into database
    public bool Save()
    {
        Connection c = new Connection();
        c.ExecStatement(@"INSERT INTO Category_Detail  (var_CategoryName,int_Parent_id) VALUES('" + _CategoryName + "','" + Id + "') ");
        return true;
    }

    // update category using categoryId
    public bool Update(int categoryId)
    {
        Connection c = new Connection();
        c.GetDataset(@"update Category_Detail set var_CategoryName='" + _CategoryName + "' where int_Id=" + categoryId);
        return true;
    }

    // delete category using categoryId
    public bool Delete(int categoryId)
    {
        Connection c = new Connection();
        c.GetDataset("delete from Category_Detail where int_Id=" + categoryId);
        return true;
    }

    #region PRPERTIES
    public int Id
    {
        get { return _Id; }
        set { _Id = value; }
    }
    public string CategoryName
    {
        get { return _CategoryName; }
        set { _CategoryName = value; }
    }
    public int ParentId
    {
        get { return _ParentId; }
        set { _ParentId = value; }
    }
    public bool HasValue { get; set; }
    #endregion
}