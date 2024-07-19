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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
     
            //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            //con.Open();
            //string str = "Select * from area";
            //SqlCommand cmd = new SqlCommand(str, con);
            //SqlDataReader dr = cmd.ExecuteReader();

            //ddlarea.DataSource = dr;

            //ddlarea.DataTextField = "AreaName";
            //ddlarea.DataValueField = "AreaId";
            //ddlarea.DataBind();
           
            //con.Close();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
       
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlarea.Enabled = true;
        ddlarea.Items.Clear();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        int cid = int.Parse(ddlcity.SelectedValue);
        string str = "Select * from area where cid="+cid+"";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();

        ddlarea.DataSource = dr;

        ddlarea.DataTextField = "AreaName";
        ddlarea.DataValueField = "AreaId";
        ddlarea.DataBind();

        con.Close();
    }
    protected void btnsearch_Click1(object sender, EventArgs e)
    {
        fillgrid();
    }

    private void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("dbo.StoredProcedure2", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@catid", SqlDbType.Int).Value = int.Parse(ddlcategry.SelectedValue);
        cmd.Parameters.Add("@cid", SqlDbType.Int).Value = int.Parse(ddlcity.SelectedValue);
        cmd.Parameters.Add("@AreaId", SqlDbType.Int).Value = int.Parse(ddlarea.SelectedValue);
        SqlDataReader dr = cmd.ExecuteReader();
        grvproperties.DataSource = dr;
        grvproperties.DataBind();
       
    }
    protected void grvproperties_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View More")
        {
            hdnusername.Value = e.CommandArgument.ToString();
            Session["udetails"] = hdnusername.Value;
            Response.Redirect("View_More.aspx");
        }
    }
}
