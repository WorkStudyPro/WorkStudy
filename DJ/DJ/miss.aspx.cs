using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class miss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/miss2.aspx");
    }

    protected void yzm2_Click(object sender, EventArgs e)
    {
        yzm1.ImageUrl = "ValidateCode.aspx";
    }
}