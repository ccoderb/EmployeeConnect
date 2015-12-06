using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void bAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add.aspx");
    }
    protected void bGrid_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grid.aspx");
    }
    protected void bEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit.aspx");
    }
    protected void bInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Projectinfo.aspx");

    }
    protected void bDoc_Click(object sender, EventArgs e)
    {
        Response.Redirect("Doc.aspx");

    }
    protected void bView_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }
    protected void bChangepw_Click(object sender, EventArgs e)
    {

        Response.Redirect("Changepw.aspx");
    }
}