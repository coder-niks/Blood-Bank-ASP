using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        

            string sql = "select * from  TblAdminLogin where Username='"+TxtUserName.Text+"' and Password='"+Txtpassword.Text+"'";

            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["ids"] = dr[0].ToString();
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username And Password')</script>");
            }
        
   
    }
}