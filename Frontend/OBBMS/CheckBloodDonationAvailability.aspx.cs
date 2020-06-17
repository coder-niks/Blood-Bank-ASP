using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CheckBloodDonationAvailability : System.Web.UI.Page
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
            blood_group_bind();
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
            DropDownSelectstate.Items.Add(dr[0].ToString());
        }
        dr.Close();
        con.Close();
    }

    
    void blood_group_bind()
    {

        string sql = "select * from TblBloodGroup";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownBloodGroup.Items.Add(dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "select * from Tbl_Blood_Detail where Blood_Name='" + DropDownBloodGroup.SelectedItem.Value.ToString() + "'and State='" + DropDownSelectstate.SelectedItem.Value.ToString() + "' and District='" + DropDownSelectDistrict.SelectedItem.Value.ToString() + "'";

        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void DropDownSelectstate_SelectedIndexChanged(object sender, EventArgs e)
    {

        search_chk();
    }
    void search_chk()
    {
        DropDownSelectDistrict.Items.Clear();

        string sql = "select * from Tbl_St_Ct where State='" + DropDownSelectstate.SelectedItem.Value.ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownSelectDistrict.Items.Add(dr[2].ToString());
        }
        dr.Close();
        con.Close();

    }
}