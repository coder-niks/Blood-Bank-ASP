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
public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string phone_no = "";
        string passwords = "";
        string sql = "select * from  TblSignUp where Email='"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            phone_no=dr[7].ToString();
            passwords = dr[4].ToString();

        }
        con.Close();
        dr.Close();
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=vaibhav.kumawat07@gmail.com:123456&senderID=TEST SMS&receipientno=" + phone_no.ToString() + "&msgtxt=Your Password Is"+passwords+"&state=4";
        WebRequest request = HttpWebRequest.Create(strUrl);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();

    }
}