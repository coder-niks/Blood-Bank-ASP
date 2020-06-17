using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Donors : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ids"] == null)
            Response.Redirect("AdminLogin.aspx");
         con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        if (!IsPostBack)
            grid_bind();
    }
    void grid_bind()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblBloodDonReg", con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
    protected void delete_Data(object source, GridViewDeleteEventArgs args)
    {

        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];

        Label lbl = (Label)rows.FindControl("Label1");

        SqlCommand cmd = new SqlCommand("delete from TblBloodDonReg where Id='" + lbl.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Delete Successfully')</script>");


    }
}