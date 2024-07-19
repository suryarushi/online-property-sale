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
public partial class Add_Category : System.Web.UI.Page
{
    static int p = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string str = "select count(catid) from tbl_category";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                p = dr.GetInt32(0);
            }
            p = p + 1;
            lblcatno.Text = p.ToString();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string cname = txtcatname.Text;
        string str = "Insert into tbl_category values('" + cname + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        int i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Redirect("Add_Category.aspx");
        }
        else
        {
            lblinfo.Text = "Please try again";
            txtcatname.Text = "";
        }
    }
}
