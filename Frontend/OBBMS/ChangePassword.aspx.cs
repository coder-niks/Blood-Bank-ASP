using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["idd"] == null)
            Response.Redirect("UserLogin.aspx");

        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        string ids =Session["idd"].ToString();
        string sql = "select * from TblSignUp where Id='"+ids.ToString()+"'";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        string passwords = TxtOld.Text;
        string old_padd = "";
        if(dr.Read())
        {
           old_padd=dr[4].ToString();
        }
        dr.Close();
        con.Close();

        if (passwords == old_padd)
        {

            if (TxtNew.Text == TxtCnfrm.Text)
            {
                string sql1 = "update TblSignUp set Password='" + TxtNew.Text + "' where Id='" + ids.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sql1, con);
                con.Open();
                cmd1.ExecuteNonQuery();

                con.Close();
           
                Response.Write("<script>alert('Password Update Successfully')</script>");
                Response.Redirect("Index.aspx");

            }
            else
            {
                Response.Write("<script>alert('New Password Or COnfirm Password Not Macth')</script>");

            }
        }
        else
        {
            Response.Write("<script>alert('Old Password Not Match')</script>");
        
        }
    }
}