using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.IO;


public partial class Approval : System.Web.UI.Page
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

        string s = "0";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblBloodRequest where status='"+s.ToString()+"'", con);
       
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }

    protected void delete_Data(object source, GridViewDeleteEventArgs args)
    {

        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];

        Label lbl = (Label)rows.FindControl("Label1");

        SqlCommand cmd = new SqlCommand("delete from TblBloodRequest where Id='" + lbl.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Delete Successfull')</script>");


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
