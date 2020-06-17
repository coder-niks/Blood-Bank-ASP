using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_CampDetail : System.Web.UI.Page
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
            grid_bind();
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["a"] != null)
            {
                Button1.Visible = true;
                id = Request.QueryString["a"].ToString();
                SqlCommand cmd = new SqlCommand("select * from TblCampDetail where CampId='" + id.ToString() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    TxtVenueAddress.Text = dr[3].ToString();
                    TxtDate.Text = dr[5].ToString();
                    TxtTime.Text = dr[4].ToString();
                    DropDownDistrict.Items.Insert(0, dr[2].ToString());
                    DropDownState.Items.Insert(0, dr[1].ToString());

                }
                con.Close();
                dr.Close();
                 BtnSave.Visible = false;
                Button1.Visible = true;

            }
            else
            {
                BtnSave.Visible = true;
               
                Button1.Visible = false;
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

        TextBox txt_sate = (TextBox)rows.FindControl("EditState");
                Label lbl = (Label)rows.FindControl("Label1");

        TextBox txt_District = (TextBox)rows.FindControl("editDistrict");
        TextBox txt_address = (TextBox)rows.FindControl("EditVenuAddress");
        TextBox txt_time = (TextBox)rows.FindControl("EditTime");
        TextBox txt_date = (TextBox)rows.FindControl("editDate");

        
        SqlCommand cmd = new SqlCommand("update TblCampDetail set State='" + txt_sate.Text + "',District='" + txt_District.Text + "',VenueAddress='" + txt_address.Text + "',Time='" + txt_time.Text + "',Date='" + txt_date.Text + "' where CampId='" + lbl.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string sql = "insert into TblCampDetail(State,District,VenueAddress,Time,Date)values('" + DropDownState.SelectedItem.Value + "','" + DropDownDistrict.SelectedItem.Value + "','" + TxtVenueAddress.Text + "','" + TxtTime.Text + "','" + TxtDate.Text + "')";


        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Save Successfully')</script>");
        
      
    }
    void grid_bind()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblCampDetail", con);

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
    protected void delete_Data(object source, GridViewDeleteEventArgs args)
    {

        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];

        Label lbl = (Label)rows.FindControl("Label1");

        SqlCommand cmd = new SqlCommand("delete from TblCampDetail where CampId='" + lbl.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Delete Successfully')</script>");


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ids = Request.QueryString["a"];
        SqlCommand cmd = new SqlCommand("update TblCampDetail set State='" + DropDownState.SelectedItem.Value.ToString() + "',District='" + DropDownDistrict.SelectedItem.Value.ToString() + "',VenueAddress='" + TxtVenueAddress.Text + "',Time='" + TxtTime.Text + "',Date='" + TxtDate.Text + "' where CampId='" +ids.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Update Successfully')</script>");

    }
}

