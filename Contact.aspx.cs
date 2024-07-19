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

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string em = txtemail.Text;
        string sub = txtsubject.Text;
        string query = txtquery.Text;
        string str = "Insert into tbl_contact values('" + em + "','" + sub + "','" + query + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        int i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Redirect("After_Contact.aspx");
        }
        else
        {
            txtemail.Text = "";
            txtsubject.Text = "";
            txtquery.Text = "";
            lbldisplay.Text = "Try After Some Time";
        }

    }
}
