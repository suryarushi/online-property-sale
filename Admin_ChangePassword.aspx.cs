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
public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtusername.Text = Session["username"].ToString();
        }
    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string u = txtusername.Text;
        string op = txtoldpass.Text;
        string np = txtnewpass.Text;
        string cp = txtconfirmpass.Text;
        if (u != "" && op != "" && np != "" && cp != "")
        {
            string str = "Update tbl_admin set password='" + np + "' where username='" + u + "' and password='" + op + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldisplay.Text = "";
                lbldisplay.Text = "Password Changed Successfully!";
            }
            else
            {
                lbldisplay.Text = "";
                lbldisplay.Text = "Try After Some Tiem!";
            }
        }
        else
        {
            lbldisplay.Text = "";
            lbldisplay.Text = "Please Fill All Entries!";
        }

    }
}
