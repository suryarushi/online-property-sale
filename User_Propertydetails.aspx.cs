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

public partial class User_Propertydetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
            con.Open();
            string username = Session["username"].ToString();

            string str = "select ca.catname,tbl_city.cname,area.AreaName,pd.paddress,pd.plandmark,pd.psize,pd.pdemandprice,pd.pimage,pd.pfeatures from tbl_propertydetails as pd inner join tbl_category as ca on pd.pcategory=ca.catid inner join tbl_city on pd.pcity=tbl_city.cid inner join area on pd.pareaid=area.AreaId  where username='" + username + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblcategory.Text = dr.GetString(0);
                lblpcity.Text = dr.GetString(1);
                lblparea.Text = dr.GetString(2);
                lblpaddress.Text = dr.GetString(3);
                lbllandmark.Text = dr.GetString(4);
                lblsize.Text = dr.GetInt32(5).ToString();
                lbldemandprice.Text = dr.GetInt32(6).ToString();
                imguser.ImageUrl = dr.GetString(7);
                lblpfeatures.Text = dr.GetString(8);
            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (btnupdate.Text == "Want To Update")
        {
            ddlcategory.Visible = true;lblcategory.Visible=  false;
            ddlcity.Visible = true; lblpcity.Visible = false;
            ddlarea.Visible = true; lblparea.Visible = false; ddlarea.Enabled = false;
            txtpaddress.Visible = true;lblpaddress.Visible  = false;
            txtplandmark.Visible = true;lbllandmark.Visible = false;
            txtpsize.Visible = true; lblsize.Visible = false;
            txtdemandprice.Visible = true; lbldemandprice.Visible = false;
            txtfeatures.Visible = true; lblpfeatures.Visible = false;
            btnupdate.Text = "Save Changes";
            txtpaddress.Text = lblpaddress.Text;
            txtplandmark.Text = lbllandmark.Text;
            txtpsize.Text = lblsize.Text;
            txtdemandprice.Text = lbldemandprice.Text;
            txtfeatures.Text = lblpfeatures.Text;
        }
        else if (btnupdate.Text =="Save Changes")
        {
            if (txtpaddress.Text != "" && txtplandmark.Text != "" && txtpsize.Text != "" && txtdemandprice.Text != "" && txtfeatures.Text != "")
            {
                string username = Session["username"].ToString();
              int catid=int.Parse(ddlcategory.SelectedValue);
              int cid = int.Parse(ddlcity.SelectedValue);
              int aid = int.Parse(ddlarea.SelectedValue);
              string padd = txtpaddress.Text;
              string plandmark = txtplandmark.Text;
              int psize = int.Parse(txtpsize.Text);
              int pdemandprice = int.Parse(txtdemandprice.Text);
              string pfeatures = txtfeatures.Text;
              SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
              con.Open();
              string str = "Update tbl_propertydetails set pcategory=" +catid + ",pcity=" +cid+ ",pareaid=" + aid + ",paddress='" + padd + "',plandmark='" + plandmark + "',psize="+psize+",pdemandprice="+pdemandprice+",pfeatures='"+pfeatures+"' where username='" + username + "'";
              SqlCommand cmd = new SqlCommand(str, con);
              int i = cmd.ExecuteNonQuery();
              if (i != 0)
              {

                  ddlcategory.Visible = false; lblcategory.Visible = true; lblcategory.Text = ddlcategory.SelectedItem.Text;
                  ddlcity.Visible = false; lblpcity.Visible = true; lblpcity.Text = ddlcity.SelectedItem.Text;
                  ddlarea.Visible = false; lblparea.Visible = true; lblparea.Text = ddlarea.SelectedItem.Text;
                  txtpaddress.Visible = false; lblpaddress.Visible = true;
                  txtplandmark.Visible = false; lbllandmark.Visible = true;
                  txtpsize.Visible = false; lblsize.Visible = true;
                  txtdemandprice.Visible = false; lbldemandprice.Visible = true;
                  txtfeatures.Visible = false; lblpfeatures.Visible = true;
                  btnupdate.Text = "Want To Update";
                  lblpaddress.Text = txtpaddress.Text;
                  lbllandmark.Text = txtplandmark.Text;
                  lblsize.Text = txtpsize.Text;
                  lbldemandprice.Text = txtdemandprice.Text;
                  lblpfeatures.Text = txtfeatures.Text;
                  
              }
              else
              {
                  lblinfo.Text = "Try After Some Time";
              }
            }
        }
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlarea.Enabled == false)
        {
            ddlarea.Enabled = true;
        }
        ddlarea.Items.Clear();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cnstr"]);
        con.Open();
        int cid = int.Parse(ddlcity.SelectedValue);
        string str = "Select * from area where cid=" + cid + "";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();

        ddlarea.DataSource = dr;

        ddlarea.DataTextField = "AreaName";
        ddlarea.DataValueField = "AreaId";
        ddlarea.DataBind();

        con.Close();
 
    }
}
