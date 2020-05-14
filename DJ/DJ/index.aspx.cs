using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelid.Text = Session["account"].ToString();
        Session["PrincipalName"] = DAL.ManagerDAL.SelectInfo(Labelid.Text, "SelectName");
        Label3.Text = DAL.ManagerDAL.SelectJobCount(Labelid.Text).ToString();
        Label6.Text= Session["PrincipalName"].ToString();
        SqlDataReader reader = DAL.ManagerDAL.SelectNewJob(Session["account"].ToString());
        if (reader.Read())
        {
            Label1.Text = "1";
            work work = (work)LoadControl("work.ascx");
            work.User(work, reader);

            Panelwork.Controls.Add(work);
        }
        else
            Label1.Text = "0";

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