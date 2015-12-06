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

public partial class Login : System.Web.UI.Page
{
    static string constr = WebConfigurationManager.ConnectionStrings["projconn"].ConnectionString;
    SqlConnection cn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bSubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT password FROM login WHERE username='" + tbUsername.Text + "'", cn);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);
     
        /*SqlDataReader dr = cmd.ExecuteReader();
                  cmd.ExecuteNonQuery().Fill(ds);
         
       */   
         


       if (String.Equals(tbPassword.Text,ds.Tables[0].Rows[0]["password"].ToString()))
    //    if (String.Equals(tbPassword.Text, password))
        Response.Redirect("MainMenu.aspx");
        else
        {
            lError.Text = "Password incorect";
            lError.Visible = true;

        }
        

    }
}