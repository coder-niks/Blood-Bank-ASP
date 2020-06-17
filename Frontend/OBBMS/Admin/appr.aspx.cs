using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;
public partial class Admin_appr : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ids"] == null)
            Response.Redirect("AdminLogin.aspx");

        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        string id = Request.QueryString["a"].ToString();
        string sql = "select * from TblBloodRequest where id='"+id.ToString()+"'";
        SqlCommand cmd1 = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        string phone = "";
        if (dr1.Read())
        {
            phone=dr1[7].ToString();
        }
    
        dr1.Close();
        con.Close();

        SqlCommand cmd = new SqlCommand("update TblBloodRequest set status='1'  where id='" + id.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();


        //string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=bhaveshnagda555@gmail.com:123456&senderID=TEST SMS&receipientno=" + phone.ToString() + "&msgtxt=Blood Request Accepted &state=4";
        //WebRequest request = HttpWebRequest.Create(strUrl);
        //HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        //Stream s = (Stream)response.GetResponseStream();
        //StreamReader readStream = new StreamReader(s);
        //string dataString = readStream.ReadToEnd();
        //response.Close();
        //s.Close();
        //readStream.Close();

        con.Close();
        Response.Write("<script>alert('Update Successfully')</script>");
        Response.Redirect("Approval.aspx");
      
    }


}