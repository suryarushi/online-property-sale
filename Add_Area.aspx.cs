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

public partial class Add_Area : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        int aid = int.Parse(lblareano.Text);
        string aname = txtareaname.Text;
        int cid=int.Parse(ddlcity.SelectedValue);
        string str = "Insert into area values('"+aname+"'," +cid+ ")";
        SqlCommand cmd = new SqlCommand(str, con);
        int i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Redirect("Add_Area.aspx");
        }
        else
        {
            lblinfo.Text = "Please try again";
            txtareaname.Text = "";
        }
    }
    static int p = 0;
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblinfo.Text = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string str = "select count(AreaId) from area where cid="+int.Parse(ddlcity.SelectedItem.Value)+"";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            p = dr.GetInt32(0);
        }
        p = p + 1;
        lblareano.Text = p.ToString();
    }
}
