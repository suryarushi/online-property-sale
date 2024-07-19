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

public partial class View_Property : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    private void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        string str = "select  ca.catname,tbl_city.cname,area.AreaName,pd.username,pd.paddress,pd.plandmark,pd.psize,pd.pdemandprice,pd.pimage,pd.pfeatures from tbl_propertydetails as pd inner join tbl_category as ca on pd.pcategory=ca.catid inner join tbl_city on pd.pcity=tbl_city.cid inner join area on pd.pareaid=area.AreaId";

        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        grvproperty.DataSource = dr;
        grvproperty.DataBind();
    }

    protected void grvproperty_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {

            hdnusername.Value = e.CommandArgument.ToString();
            string u = hdnusername.Value;
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string str = "Delete from tbl_userlogin where username='" + u + "'";
            string str1 = "Delete from tbl_personaldetails where username='" + u + "'";
            string str2 = "Delete from tbl_propertydetails where username='" + u + "'";
            SqlCommand cm = new SqlCommand(str, con);
            SqlCommand cm1 = new SqlCommand(str1, con);
            SqlCommand cm2 = new SqlCommand(str2, con);
            int i = cm.ExecuteNonQuery();
            int j = cm1.ExecuteNonQuery();
            int k = cm2.ExecuteNonQuery();
            if (i != 0 && j != 0 && k != 0)
            {
                Response.Redirect("View_Property.aspx");
            }

        }

    }
}
