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

public partial class BloodRequest : System.Web.UI.Page
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
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (DropDownTerm.SelectedItem.Value == "Yes")
        {
            if (FileUploadPtntPhoto.HasFile)
            {
                FileUploadPtntPhoto.SaveAs(Server.MapPath("~/Admin/blood_Req/") + FileUploadPtntPhoto.FileName);
                FileUploadProof.SaveAs(Server.MapPath("~/Admin/Req_Proof_Doc/") + FileUploadProof.FileName);
            }
            //string ss = TxtPhone.Text;
             //string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=vaibhav.kumawat07@gmail.com:123456&senderID=TEST SMS&receipientno=" + ss.ToString() + "&msgtxt=Blood Request Successfully Contact you soon &state=4";
             //WebRequest request = HttpWebRequest.Create(strUrl);
            //HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            //Stream s = (Stream)response.GetResponseStream();
            //StreamReader readStream = new StreamReader(s);
            //string dataString = readStream.ReadToEnd();
            //response.Close();
            //s.Close();
            //readStream.Close();

            string id = Session["idd"].ToString();
            string sql = "insert into TblBloodRequest(PatientName,BloodGroup,State,District,UnitsRequired,Email,Phone,HospitalName,Address,Purpose,Photo,WhenReq,userid,ProofDoc)values('" + TxtPatientName.Text + "','" + DropDownBloodgroup.SelectedItem.Value.ToString() + "','" + DropDownState.SelectedItem.Value.ToString() + "','" + DropDownDistrict.SelectedItem.Value.ToString() + "','" + TxtUnitReq.Text + "','" + TxtEmail.Text + "','" + TxtPhone.Text + "','" + TxtHospitalName.Text + "','" + TxtAddress.Text + "','" + TxtPurpose.Text + "','" + FileUploadPtntPhoto.FileName + "','" + TxtWhenReq.Text + "','" + id.ToString() + "','" + FileUploadProof.FileName + "')";


            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Request Submitted')</script>");
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
         DropDownBloodgroup.Items.Add(dr[1].ToString());
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