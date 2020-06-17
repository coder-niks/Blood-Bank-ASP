using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;
using System.Data;



public partial class Admin_AddBloodBank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    string id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ids"] == null)
            Response.Redirect("AdminLogin.aspx");
        con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["a"].ToString();
        if (!IsPostBack)
        {
            state_bind();
            grid_bind();

        }
        if (!IsPostBack)
        {
            if (Request.QueryString["a"] != null)
            {
                
                FileUploadId.Visible = false;
                BtnUpdate.Visible = true;
                id = Request.QueryString["a"].ToString();
                SqlCommand cmd = new SqlCommand("select * from TblBloodBank where BloodBankId='" + id.ToString() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TxtBloodBankName.Text = dr[1].ToString();
                    TxtHospitalName.Text = dr[2].ToString();
                    DropDownState.Items.Insert(0, dr[3].ToString());
                    DropDownDistrict.Items.Insert(0, dr[4].ToString());
                    TxtAddress.Text = dr[5].ToString();
                    TxtEmail.Text = dr[6].ToString();
                    TxtPhone.Text = dr[7].ToString();
                    TxtWebsite.Text = dr[8].ToString();
                    TxtFax.Text = dr[9].ToString();
                    DropDownType.Items.Insert(0, dr[11].ToString());

                  


                }
                con.Close();
                dr.Close();
                BtnSave.Visible = false;
                BtnUpdate.Visible = true;

            }
            else
            {
                BtnSave.Visible = true;
               
                BtnUpdate.Visible = false;
            }
        }
    }
    protected void grid_edit(object source, GridViewEditEventArgs args)
    {
        GridView1.EditIndex = args.NewEditIndex;
        grid_bind();
    }
    protected void cancel_Edit(object source, GridViewCancelEditEventArgs args)
    {
        GridView1.EditIndex = -1;
        grid_bind();
    }

    protected void grid_up(object source, GridViewUpdateEventArgs args)
    {
        GridViewRow rows = (GridViewRow)GridView1.Rows[args.RowIndex];
        GridView1.EditIndex = -1;
          TextBox txt_BloodBank_name = (TextBox)rows.FindControl("EditBloodBankName");
        TextBox txt_hospital_name = (TextBox)rows.FindControl("EditHospitalName");
        Label lbl = (Label)rows.FindControl("Label1");
        TextBox txt_sate = (TextBox)rows.FindControl("EditState");
        TextBox txt_District = (TextBox)rows.FindControl("editDistrict");
        TextBox txt_Address = (TextBox)rows.FindControl("editAddress");
        TextBox txt_Email = (TextBox)rows.FindControl("editEmail");
        TextBox txt_Phone = (TextBox)rows.FindControl("editPhone");
        TextBox txt_Website = (TextBox)rows.FindControl("editWebsite");
        TextBox txt_Fax = (TextBox)rows.FindControl("editFax");
        TextBox txt_Type = (TextBox)rows.FindControl("EditTypes");

        SqlCommand cmd = new SqlCommand("update TblBloodBank set BloodBankName='"+txt_BloodBank_name.Text+"',HospitalName='"+txt_hospital_name.Text+"',State='"+txt_sate.Text+"',District='"+txt_District.Text+"',Address='"+txt_Address.Text+"',Email='"+txt_Email.Text+"',Phone='"+txt_Phone.Text+"',website='"+txt_Website.Text+"',Fax='"+txt_Fax.Text+"',Types='"+txt_Type.Text+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {

           
        

            FileUploadId.SaveAs(Server.MapPath("~/Admin/blood_bank_ID/") + FileUploadId.FileName);
       
        string sql = "insert into TblBloodBank(BloodBankName,HospitalName,State,District,Address,Email,Phone,Website,fax,LicenseId,Types)values('" + TxtBloodBankName.Text + "','" + TxtHospitalName.Text + "','" + DropDownState.SelectedItem.Value.ToString() + "','" + DropDownDistrict.SelectedItem.Value.ToString() +"','"+TxtAddress.Text+"','"+ TxtEmail.Text + "','" + TxtPhone.Text + "','" + TxtWebsite.Text + "','" + TxtFax.Text + "','"+FileUploadId.FileName+"','"+DropDownType.SelectedItem.Value.ToString()+"')";



        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
        grid_bind();

       Response.Write("<script>alert('Save Successfully')</script>");
    
    }
    void grid_bind()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblBloodBank", con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


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
  
    protected void DropDownState_SelectedIndexChanged(object sender, EventArgs e)
    {
        search_chk();
    }

    void search_chk()
    {
        DropDownDistrict.Items.Clear();

        string sql = "select * from Tbl_St_Ct where State='"+DropDownState.SelectedItem.Value.ToString()+"'";
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

   protected void delete_Data(object source, GridViewDeleteEventArgs args)
    {

        GridViewRow rows =(GridViewRow) GridView1.Rows[args.RowIndex];

        Label lbl = (Label)rows.FindControl("Label1");

        SqlCommand cmd = new SqlCommand("delete from TblBloodBank where BloodBankId='" + lbl.Text + "'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Delete Successfully')</script>");
    
    
    }
   
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        string ids = Request.QueryString["a"];
        SqlCommand cmd = new SqlCommand("update TblBloodBank set BloodBankName='" + TxtBloodBankName.Text + "',HospitalName='" + TxtHospitalName.Text + "',State='" + DropDownState.SelectedItem.Value.ToString() + "',District='" + DropDownDistrict.SelectedItem.Value.ToString() + "',Address='" + TxtAddress.Text + "',Email='" + TxtEmail.Text + "',Phone='" + TxtPhone.Text + "',website='" + TxtWebsite.Text + "',Fax='" + TxtFax.Text + "',Types='"+DropDownType.SelectedItem.Value.ToString()+"' where BloodBankId='"+ids.ToString()+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grid_bind();
        Response.Write("<script>alert('Update Successfully')</script>");


    }
}

