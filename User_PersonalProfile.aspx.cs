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

public partial class User_PersonalProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string username = Session["username"].ToString();

            string str = "select * from tbl_personaldetails where username='" + username + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblname.Text = dr.GetString(1);
                lbladdress.Text = dr.GetString(3);
                lblcontact.Text = dr.GetString(5);
                lbloccupation.Text = dr.GetString(6);
                lblcity.Text = dr.GetString(4);

            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (btnupdate.Text == "Want To Update")
        {
            txtaddress.Visible = true; lbladdress.Visible = false;
            txtname.Visible = true; lblname.Visible = false;
            txtcity.Visible = true; lblcity.Visible = false;
            txtcontact.Visible = true; lblcontact.Visible = false;
            txtoccupation.Visible = true; lbloccupation.Visible = false;
            btnupdate.Text = "Save Changes";
            txtoccupation.Text = lbloccupation.Text;
            txtname.Text = lblname.Text;
            txtaddress.Text = lbladdress.Text;
            txtcity.Text = lblcity.Text;
            txtcontact.Text = lblcontact.Text;
        }
        else if(btnupdate.Text=="Save Changes")
        {
         string username = Session["username"].ToString();
         if (txtcontact.Text != "" && txtname.Text != "" && txtaddress.Text != "" && txtcity.Text != "" && txtoccupation.Text != "")
         {
             SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
             con.Open();
             string name = txtname.Text;
             string add = txtaddress.Text;
             string city = txtcity.Text;
             string contact = txtcontact.Text;
             string occu = txtoccupation.Text;
             string str = "Update tbl_personaldetails set name='" + name + "',personaladdress='" + add + "',city='" + city + "',contact='" + contact + "',occupation='" + occu + "' where username='" + username + "'";
             SqlCommand cmd = new SqlCommand(str, con);
             int i = cmd.ExecuteNonQuery();
             if (i != 0)
             {
                 lbladdress.Visible = true; lbladdress.Text = txtaddress.Text; txtaddress.Visible = false;
                 lblcity.Visible = true; lblcity.Text = txtcity.Text; txtcity.Visible = false;
                 lblcontact.Visible = true; lblcontact.Text = txtcontact.Text; txtcontact.Visible = false;
                 lblname.Visible = true; lblname.Text = txtname.Text; txtname.Visible = false;
                 lbloccupation.Visible = true; lbloccupation.Text = txtoccupation.Text; txtoccupation.Visible = false;
                 btnupdate.Text = "Want To Update";

             }
             else
             {
                 lblinfo.Text = "Try After Some Time";
             }
         }
        }
    }
}
