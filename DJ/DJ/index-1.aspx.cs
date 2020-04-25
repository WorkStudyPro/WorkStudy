using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["PrincipalName"].ToString();
        Labelid.Text = Session["account"].ToString();
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/Resume.aspx");
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/management.aspx");
    }

    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/mynews.aspx");
    }

    protected void Button发布兼职2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }

    protected void Button我的信息_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/myset.aspx");
    }
}