using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;


public class Connection
{
    string conn;
    SqlConnection con;
    SqlCommand cmd;

    public Connection()
    {
         conn = System.Configuration.ConfigurationManager.ConnectionStrings["MyConn"].ToString();
        con = new SqlConnection(conn);
    }

    private SqlCommand SqlCmnd()
    {
        if (con.State == 0) con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        return cmd;
    }

    public void ExecStatement(String sql)
    {
        SqlCommand cmd = new SqlCommand();
        cmd = SqlCmnd();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public DataSet GetDataset(String sql)
    {
        con.Close();
        con.Open();
        SqlDataAdapter Adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
      
        cmd = SqlCmnd();
            cmd.CommandText = sql;
        //cmd.CommandTimeout = 1200;
        Adapter.SelectCommand = cmd;
        
        Adapter.Fill(ds);
        Adapter.Dispose();
        cmd.Dispose();
        con.Close();
        return ds;
    }

    public DataSet GetDataset(String sql, SqlTransaction MyTrans)
    {
        SqlDataAdapter Adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd;
        cmd = SqlCmnd();
        cmd.Transaction = MyTrans;
        cmd.CommandText = sql;
        Adapter.SelectCommand = cmd;
        Adapter.Fill(ds);
        Adapter.Dispose();
        cmd.Dispose();
        return ds;
    }

    public DataSet GetDataset(String sql, List<SqlParameter> Parameters)
    {
        SqlDataAdapter Adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd;
        cmd = SqlCmnd();
        for (int i = 0; i < Parameters.Count; i++)
            cmd.Parameters.Add(Parameters[i]);
        cmd.CommandText = sql;
        // Adapter.Fill(ds);
        Adapter.SelectCommand = cmd;
        Adapter.Fill(ds);
        Adapter.Dispose();
        cmd.Dispose();
        return ds;
    }

    public DataSet GetDataset(String sql, List<SqlParameter> Parameters, SqlTransaction MyTrans)
    {
        SqlDataAdapter Adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd;
        cmd = SqlCmnd();
        cmd.Transaction = MyTrans;
        for (int i = 0; i < Parameters.Count; i++)
            cmd.Parameters.Add(Parameters[i]);
        cmd.CommandText = sql;
        Adapter.SelectCommand = cmd;
        Adapter.Fill(ds);
        Adapter.Dispose();
        cmd.Dispose();
        return ds;
    }

    public int ExecScalarStatement(String sql)
    {
        using (SqlCommand cmd = SqlCmnd())
        {
            cmd.CommandText = sql;
            int ident = Convert.ToInt32(cmd.ExecuteScalar());
            return ident;
        }
    }

    public int ExecScalarStatement(String sql, List<SqlParameter> Parameters)
    {
        using (SqlCommand cmd = SqlCmnd())
        {
            cmd.CommandText = sql;
            for (int i = 0; i < Parameters.Count; i++)
                cmd.Parameters.Add(Parameters[i]);
           int ident = Convert.ToInt32(cmd.ExecuteScalar());
           return ident;
        }
    }

    public void ExecStatement(String sql, List<SqlParameter> Parameters)
    {
        using (SqlCommand cmd = SqlCmnd())
        {
            cmd.CommandText = sql;
            for (int i = 0; i < Parameters.Count; i++)
                cmd.Parameters.Add(Parameters[i]);
            cmd.ExecuteNonQuery();
        }
    }

    public void ExecStatement(String sql, SqlTransaction myTrans)
    {
        SqlCommand cmd = new SqlCommand();
        cmd = SqlCmnd();
        cmd.Transaction = myTrans;
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
    }

    public void ExecStatement(String sql, List<SqlParameter> Parameters, SqlTransaction myTrans)
    {
        SqlCommand cmd = new SqlCommand();
        cmd = SqlCmnd();
        cmd.Transaction = myTrans;
        cmd.CommandText = sql;
        for (int i = 0; i < Parameters.Count; i++)
            cmd.Parameters.Add(Parameters[i]);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
    }

    public void StartTrans(ref SqlTransaction myTrans)
    {
        SqlConnection clscon = con;
        clscon.Open();
        myTrans = clscon.BeginTransaction();
    }

    public void Dispose()
    {
        con.Close();
        con.Dispose();
    }

    ~Connection()
    {
        // if (con != null) con.Dispose();
    }

}
