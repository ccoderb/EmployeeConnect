using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;

public partial class Changepw : System.Web.UI.Page
{
    static string constr = WebConfigurationManager.ConnectionStrings["projconn"].ConnectionString;
    SqlConnection cn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {



            SqlDataAdapter da = new SqlDataAdapter("SELECT username from login", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.ddlUser.DataSource = ds;
            this.ddlUser.DataTextField = "username";
            this.ddlUser.DataBind();
        }
    }

    protected void bSubmit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT password FROM login WHERE username='" + ddlUser.SelectedValue + "'", cn);

        DataSet ds = new DataSet();
        da.Fill(ds);


        if (String.Equals(tbOld.Text, ds.Tables[0].Rows[0]["password"].ToString()))
        {
            if (tbNew.Text == tbVerify.Text)
            {
                SqlCommand cmd2 = new SqlCommand("UPDATE login SET password= '" + tbNew.Text + "'  WHERE username='" + ddlUser.Text + "'", cn);
                cn.Open();
                cmd2.ExecuteNonQuery();
                cn.Close();
                lSuccess.Text="Password Changed";
                lSuccess.Visible = true;
                lVerify.Visible = false;
                lError.Visible = false;
            }
            else
            {
                lVerify.Text = "wrong verification";
                lVerify.Visible = true;
            }
        }
        else
        {

            lError.Text = "Password incorect";
            lError.Visible = true;
        }
    }
    protected void bHome_Click(object sender, EventArgs e)
    {

        Response.Redirect("MainMenu.aspx");
    }
}