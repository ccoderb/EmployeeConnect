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
public partial class Default2 : System.Web.UI.Page
{
    static string constr = WebConfigurationManager.ConnectionStrings["projconn"].ConnectionString;
    SqlConnection cn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT name as dmk from addst", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.ddlName.DataSource = ds;
            this.ddlName.DataTextField = "dmk";
            this.ddlName.DataBind();
        }

    }
    protected void bShow_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da2 = new SqlDataAdapter("SELECT id FROM addst WHERE name='"+ddlName.Text+"'", cn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
    //    lFilename.Visible = true;
       // string fileext = Path.GetExtension("Reports/"+ds2.Tables[0].Rows[0]["id"].ToString());
        SqlCommand cmda = new SqlCommand("SELECT reportext FROM addst WHERE name='" + ddlName.Text + "'", cn);

        SqlDataAdapter daa = new SqlDataAdapter(cmda);

        DataSet dsa = new DataSet();
        daa.Fill(dsa);
        string fileext = dsa.Tables[0].Rows[0]["reportext"].ToString();
               // lFilename.Text=@"<a href=Reports/"+ds2.Tables[0].Rows[0]["id"].ToString()+".pdf>link</a>";
                lFilename.Text =@"<a href=Reports/"+ds2.Tables[0].Rows[0]["id"].ToString()+fileext+">link</a>";
                this.iPhoto.ImageUrl ="Images/"+ds2.Tables[0].Rows[0]["id"].ToString()+".jpg";
    }
    protected void bHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainMenu.aspx");
    }







    protected void bCerti_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da2 = new SqlDataAdapter("SELECT id FROM addst WHERE name='" + ddlName.Text + "'", cn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
            //lCerti.Visible = true;
        lCerti.Text = @"<a href=Certificates/" + ds2.Tables[0].Rows[0]["id"].ToString() + ".pdf>link</a>";

        this.iPhoto.ImageUrl = "Images/" + ds2.Tables[0].Rows[0]["id"].ToString() + ".jpg";
    }
    protected void bCode_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da2 = new SqlDataAdapter("SELECT id FROM addst WHERE name='" + ddlName.Text + "'", cn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        SqlCommand cmda = new SqlCommand("SELECT codeext FROM addst WHERE name='" + ddlName.Text + "'", cn);

        SqlDataAdapter daa = new SqlDataAdapter(cmda);

        DataSet dsa = new DataSet();
        daa.Fill(dsa);
        string fileext = dsa.Tables[0].Rows[0]["codeext"].ToString();
        //    lFilename.Visible = true;
        
        lCode.Text = @"<a href=Codes/" + ds2.Tables[0].Rows[0]["id"].ToString() +fileext +">link</a>";

        this.iPhoto.ImageUrl = "Images/" + ds2.Tables[0].Rows[0]["id"].ToString() + ".jpg";
    }
}