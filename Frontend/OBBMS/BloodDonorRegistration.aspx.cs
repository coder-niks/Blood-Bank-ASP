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
public partial class BloodDonorRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["idd"] == null)
            Response.Redirect("UserLogin.aspx");

        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        if (!IsPostBack)
        {
            state_bind();
            blood_group_bind();
        }
        
    }

    protected void BtnRegiater_Click(object sender, EventArgs e)
    {
        if (DropDownTerm.SelectedItem.Value == "Yes")
        {

            FileUploadDonor.SaveAs(Server.MapPath("~/Admin/Dnr_Reg/") + FileUploadDonor.FileName);
            FileUploadProof.SaveAs(Server.MapPath("~/Admin/Dnr_Reg_Proof/") + FileUploadProof.FileName);


            //string ss = TxtPhone.Text;
            //string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=nareshmali302@gmail.com:123456&senderID=TEST SMS&receipientno=" + ss.ToString() + "&msgtxt=Registration Successfully Congrats You are my New Donar &state=4";
            //WebRequest request = HttpWebRequest.Create(strUrl);
            //HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            //Stream s = (Stream)response.GetResponseStream();
            //StreamReader readStream = new StreamReader(s);
            //string dataString = readStream.ReadToEnd();
            //response.Close();
            //s.Close();
            //readStream.Close();

            string sql = "insert into TblBloodDonReg(DonorName,Email,District,Address,BloodGroup,Gender,DOB,PrvsBlodDonDte,Photo,Phone,State,ProofDoc)values('" + TxtDnrName.Text + "','" + TxtEmail.Text + "','" + DropDownDistrict.SelectedItem.Value.ToString() + "','" + TxtAddress.Text + "','" + DropDownBloodGroup.SelectedItem.Value.ToString() + "','" + DropDownGender.SelectedItem.Value.ToString() + "','" + TxtDOB.Text + "','" + TxtPreBlodDonDte.Text + "','" + FileUploadDonor.FileName + "','" + TxtPhone.Text + "','" + DropDownState.SelectedItem.Value.ToString() + "','" + FileUploadProof.FileName + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("UserHome.aspx");


        }
        else
        {
            Response.Write("<script>alert('Please Accept The Term and Conditions')</script>");
        }

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
           DropDownBloodGroup.Items.Add(dr[1].ToString());
       }
       dr.Close();
       con.Close();
   }
      
    protected void  DropDownState_SelectedIndexChanged(object sender, EventArgs e)
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

}

