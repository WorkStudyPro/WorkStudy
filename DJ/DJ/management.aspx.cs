using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        work worko = (work)Page.LoadControl("~/work.ascx");
        work worko1 = (work)Page.LoadControl("~/work.ascx");
        work worko2 = (work)Page.LoadControl("~/work.ascx");
        Panel3.Controls.Add(worko);
        Panel3.Controls.Add(worko1);
        Panel3.Controls.Add(worko2);
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}