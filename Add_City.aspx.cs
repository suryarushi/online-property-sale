using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Add_Area : System.Web.UI.Page
{
    static int p = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string str = "select count(cid) from tbl_city";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                p = dr.GetInt32(0);
            }
            p = p + 1;
            lblcityno.Text = p.ToString();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string cname = txtcityname.Text;
        string str = "Insert into tbl_city values('" + cname + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        int i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Redirect("Add_City.aspx");
        }
        else
        {
            lblinfo.Text = "Please try again";
            txtcityname.Text = "";
        }
    }
}
