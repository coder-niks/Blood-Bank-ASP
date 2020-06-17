using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MessageReq : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["idd"] == null)
            Response.Redirect("UserLogin.aspx");

        
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();

        ss();
    }
    public void ss()
    {
        string id = Session["idd"].ToString();
        string s = "1";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblBloodRequest where status='"+s.ToString()+"' and userid='"+id.ToString()+"'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}