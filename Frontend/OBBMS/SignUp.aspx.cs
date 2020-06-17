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

public partial class Admin_SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
  //      TxtSignUp.Enabled = false;
    }
  
    protected void TxtSignUp_Click(object sender, EventArgs e)
    {

        if (DropDownTerm.SelectedItem.Value == "Yes")
        {

            FileUploadPhoto.SaveAs(Server.MapPath("~/Admin/Sign_up/") + FileUploadPhoto.FileName);

            FileUpload1.SaveAs(Server.MapPath("~/Admin/User_Proof_Doc/") + FileUpload1.FileName);

            SqlCommand cm = new SqlCommand("select * from TblSignUp where UserName='" + TxtUsrName.Text + "'", con);

            con.Open();
            SqlDataReader dr = cm.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = " User Name Already Exists";


            }
            else
            {

                dr.Close();
                con.Close();

                SqlCommand cm1 = new SqlCommand("select * from TblSignUp where  Email='" + TxtEmail.Text + "'", con);

                con.Open();
                SqlDataReader dr1 = cm1.ExecuteReader();

                if (dr1.Read())
                {
                    Label1.Text = "Email Id Already Exists";

                }
                else
                {
                    dr1.Close();
                    con.Close();
                    //string ss = TxtPhone.Text;
                      // string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=saininiks40@gmail.com:123456&senderID=TEST SMS&receipientno=" + ss.ToString() + "&msgtxt=Sign up Successfully Congrats You are my New User &state=4";
                     //WebRequest request = HttpWebRequest.Create(strUrl);
                    //HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                    //Stream s = (Stream)response.GetResponseStream();
                    //StreamReader readStream = new StreamReader(s);
                    //string dataString = readStream.ReadToEnd();
                    //response.Close();
                    //s.Close();
                    //readStream.Close();

                    string sql = "insert into TblSignUp(FirstName,LastName,UserName,Password,Email,Phone,Address,ProofDoc,Gender,DOB,Photo)values('" + TxtFrstName.Text + "','" + TxtLstName.Text + "','" + TxtUsrName.Text + "','" + TxtPswrd.Text + "','" + TxtEmail.Text + "','" + TxtPhone.Text + "','" + TxtAddress.Text + "','" + FileUpload1.FileName + "','" + DropDownGender.SelectedItem.Value.ToString() + "','" + TextBox2.Text + "','" + FileUploadPhoto.FileName + "')";

                    SqlCommand cmd = new SqlCommand(sql, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("UserLogin.aspx");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Please Accept The Term and Conditions')</script>");
        }

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
     
    }
    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        TxtSignUp.Enabled = true;
    }
}