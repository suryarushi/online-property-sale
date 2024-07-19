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

public partial class View_More : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["udetails"] != null)
        {
            string u = Session["udetails"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string str="select plandmark,pimage,pfeatures from tbl_propertydetails where username='"+u+"'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblfeatures.Text = dr.GetString(2);
                landmark.Text = dr.GetString(0);
                imgproperty.ImageUrl = dr.GetString(1);
            }
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }
}
