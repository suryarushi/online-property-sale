using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldisplay.Text = "";
    }
    protected void ddlpcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlarea.Items.Clear();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        int cid = int.Parse(ddlpcity.SelectedValue);
        string str = "Select * from area where cid=" + cid + "";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();

        ddlarea.DataSource = dr;

        ddlarea.DataTextField = "AreaName";
        ddlarea.DataValueField = "AreaId";
        ddlarea.DataBind();

        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "" && txtdemandprice.Text == "" && txtusername.Text == "" && txtdob.Text == "" && txtpaddress.Text == "" && txtpassword.Text == "" && txtpassword.Text == "" && txtpsize.Text == "" && txtlandmark.Text == "" && FileUpload1.PostedFile.FileName == "" && txtconfirmpass.Text == "" && txtoccupation.Text == "" && txtpsize.Text == "" && txtcontact.Text == "" && txtpaddress.Text == "")
        {
            lbldisplay.Text = "Fill All Entries";
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string u = txtusername.Text;
            string p = txtpassword.Text;
            string name = txtname.Text;
            DateTime dob = DateTime.Parse(txtdob.Text);
            string add = txtaddress.Text;
            string city = txtcity.Text;
            string contact = txtcontact.Text;
            string occu = txtoccupation.Text;
            int pcatid = int.Parse(ddlcategory.SelectedValue);
            int pcityid = int.Parse(ddlpcity.SelectedValue);
            int pareaid =int.Parse(ddlarea.SelectedValue);
            string str = "select * from area";

            string padd = txtpaddress.Text;
            string plandmark = txtlandmark.Text;
            int psize = int.Parse(txtpsize.Text);
            int dprice = int.Parse(txtdemandprice.Text);
            string pfeatures = txtfeatures.Text;
            if (chkuser(u))
            {

                if (FileUpload1.HasFile)
                {
                    string fpath = "Photos/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(MapPath("~/" + fpath));
                    string str1 = "Insert into tbl_userlogin values('" + u + "','" + p + "')";
                    string str2 = "Insert into tbl_personaldetails values('" + u + "','" + name + "','" + dob.Date + "','" + add + "','" + city + "','" + contact + "','" + occu + "')";
                    string str3 = "Insert into tbl_propertydetails values('" + u + "'," + pcatid + "," + pcityid + "," + pareaid + ",'" + padd + "','" + plandmark + "'," + psize + "," + dprice + ",'" + fpath + "','" + pfeatures + "')";
                    SqlCommand cmd = new SqlCommand(str1, con);
                    SqlCommand cmd2 = new SqlCommand(str2, con);
                    SqlCommand cmd3 = new SqlCommand(str3, con);
                    int i = cmd.ExecuteNonQuery();
                    int j = cmd2.ExecuteNonQuery();
                    int k = cmd3.ExecuteNonQuery();
                    if (i != 0 && j != 0 && k != 0)
                    {
                        Response.Redirect("After_Registration.aspx");
                    }
                }
                else
                {
                    lbldisplay.Text = "";
                    lbldisplay.Text = "Please Select Image Of your Property";
                }
            }
            else
            {
                lbldisplay.Text = "";
                lbldisplay.Text = "This User Is Already Exist!";
            }
        }
    }
    private bool chkuser(string u)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string str="Select * from tbl_personaldetails where  username='"+u+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
            return false;
        else
            return true;

    }
}
