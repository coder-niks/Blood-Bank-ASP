﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;

public partial class BloodBankList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["idd"] == null)
            Response.Redirect("UserLogin.aspx");

        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        if (!IsPostBack)
        {
            state_bind();
        }
    }
    void state_bind()
    {

        string sql = "select distinct State from Tbl_St_Ct";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownState.Items.Add(dr[0].ToString());
        }

        dr.Close();
        con.Close();
    }
    protected void DropDownState_SelectedIndexChanged(object sender, EventArgs e)
    {
        search_chk();
    }
    void search_chk()
    {
        DropDownDistrict.Items.Clear();

        string sql = "select * from Tbl_St_Ct where State='" + DropDownState.SelectedItem.Value.ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownDistrict.Items.Add(dr[2].ToString());
        }
        dr.Close();
        con.Close();

    }
    void grid_binds()
    {
        SqlDataAdapter dsa = new SqlDataAdapter("select * from TblBloodBank where District='" + DropDownDistrict.SelectedItem.Value.ToString() + "' and State='" + DropDownState.SelectedItem.Value.ToString() + "'",con);
        DataSet ds = new DataSet();
        dsa.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }

    protected void BtbsSch_Click(object sender, EventArgs e)
    {
        grid_binds();

    }
}
