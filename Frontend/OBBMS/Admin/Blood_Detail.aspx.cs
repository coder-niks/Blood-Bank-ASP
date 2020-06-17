using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Blood_Detail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    string id = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ids"] == null)
            Response.Redirect("AdminLogin.aspx");
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        if (!IsPostBack)
        {
            state_bind();
            blood_group_bind();
            grid_bind();
        }

        if (!IsPostBack)
        {
            if (Request.QueryString["a"] != null)
            {
             
                BtnUpdate.Visible = true;
                id = Request.QueryString["a"].ToString();
                SqlCommand cmd = new SqlCommand("select * from Tbl_Blood_Detail where Id='" + id.ToString() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                   DropDownBloodName.Items.Insert(0,dr[1].ToString());
                   DropDownBloodBnk.Items.Insert(0, dr[2].ToString());
                   TxtBottels.Text = dr[3].ToString();
                   TxtDate.Text = dr[4].ToString();
                    DropDownState.Items.Insert(0, dr[5].ToString());
                    DropDownDistrict.Items.Insert(0, dr[6].ToString());

                }

                con.Close();
                dr.Close();
                Button1.Visible = false;
                BtnUpdate.Visible = true;

            }
            else
            {
                Button1.Visible = true;
               
                BtnUpdate.Visible = false;
            }
            
        }
    }

     protected void grid_edit(object source, GridViewEditEventArgs args)
    {
        GridView1.EditIndex = args.NewEditIndex;
        grid_bind();
    }
    protected void cancel_Edit(object source, GridViewCancelEditEventArgs args)
    {
        GridView1.EditIndex = -1;
        grid_bind();
    }

    protected void grid_up(object source, GridViewUpdateEventArgs args)
    {
        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];
        GridView1.EditIndex = -1;
        TextBox txt_Blood_Name = (TextBox)rows.FindControl("EditBloodName");
        TextBox txt_Blood_Bank = (TextBox)rows.FindControl("EditBloodBank");
        TextBox txt_No_Of_Bottels = (TextBox)rows.FindControl("editNoOFBottels");
        TextBox txt_Expiry_Date = (TextBox)rows.FindControl("ediExpiryDate");
        TextBox txt_sate = (TextBox)rows.FindControl("EditState");
        TextBox txt_District = (TextBox)rows.FindControl("editDistrict");

        SqlCommand cmd = new SqlCommand("update TblBloodBank set Blood_Name='" + txt_Blood_Name.Text + "',Blood_Bank='" + txt_Blood_Bank.Text + "',No_Of_Bottels='" + txt_No_Of_Bottels.Text + "',Expiry_Date='" + txt_Expiry_Date.Text + "',State='" + txt_sate.Text + "',District='" + txt_District.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sql = "insert into Tbl_Blood_Detail(Blood_Name,Blood_Bank,No_Of_Bottels,Expiry_Date,State,District)values('" + DropDownBloodName.SelectedItem.Value.ToString() + "','" + DropDownBloodBnk.SelectedItem.Value.ToString() + "','" + TxtBottels.Text + "','" + TxtDate.Text + "','" + DropDownState.SelectedItem.Value.ToString() + "','" + DropDownDistrict.SelectedItem.Value.ToString() + "')";

        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Save Successfully')</script>");
    }
    void grid_bind()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from Tbl_Blood_Detail", con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


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

    void blood_group_bind()
    {

        string sql = "select * from TblBloodGroup";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownBloodName.Items.Add(dr[1].ToString());
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

    protected void DropDownDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        search_chk1();

    }

    void search_chk1()
    {
        DropDownBloodBnk.Items.Clear();

        string sql = "select * from TblBloodBank where  State='" + DropDownState.SelectedItem.Value.ToString() + "' and District='" + DropDownDistrict.SelectedItem.Value.ToString() + "'";

        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownBloodBnk.Items.Add(dr[1].ToString());
        }
        dr.Close();
        con.Close();

    }

    protected void delete_Data(object source, GridViewDeleteEventArgs args)
    {

        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];

        Label lbl = (Label)rows.FindControl("Label1");

        SqlCommand cmd = new SqlCommand("delete from Tbl_Blood_Detail where Id='" + lbl.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Delete Successfully')</script>");
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {

        string ids = Request.QueryString["a"];
        SqlCommand cmd = new SqlCommand("update Tbl_Blood_detail set Blood_Name='" + DropDownBloodName.SelectedItem.Value.ToString() + "',Blood_Bank='" + DropDownBloodBnk.SelectedItem.Value.ToString() + "',No_Of_Bottels='" + TxtBottels.Text + "',Expiry_Date='" + TxtDate.Text + "',State='" + DropDownState.SelectedItem.Value.ToString() + "',District='" + DropDownDistrict.SelectedItem.Value.ToString() + "' where Id='" + ids.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Update Successfully')</script>");

    }
}