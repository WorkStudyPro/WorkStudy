using System;
using System.Web.UI;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelid.Text = Session["account"].ToString();
        Label6.Text = DAL.ManagerDAL.SelectInfo(Labelid.Text, "SelectName");
        Session["PrincipalName"] = Label6.Text;
        
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/management.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/mynews.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:56935/Resume.aspx");
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
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