using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labelid.Text = Session["account"].ToString();
        Label6.Text = DAL.ManagerDAL.SelectInfo(Labelid.Text, "SelectName");
        Session["PrincipalName"] = Label6.Text;
        SqlDataReader reader = DAL.ManagerDAL.SelectNewJob(Session["account"].ToString());
        if (reader.Read())
        {
            work work = (work)LoadControl("work.ascx");
            ((Button)work.FindControl("name")).Text = reader.GetString(2);
            ((Label)work.FindControl("time")).Text = reader.GetString(3);
            ((Label)work.FindControl("where")).Text = reader.GetString(4);
            ((Label)work.FindControl("renshu")).Text = reader.GetInt32(6).ToString();
            ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(7).ToString();

            ((Label)work.FindControl("name1")).Text = ((Button)work.FindControl("name")).Text;
            ((Label)work.FindControl("time1")).Text = ((Label)work.FindControl("time")).Text;
            ((Label)work.FindControl("where1")).Text = ((Label)work.FindControl("where")).Text;
            ((Label)work.FindControl("jieshao1")).Text = reader.GetString(5);
            ((Label)work.FindControl("renshu1")).Text = ((Label)work.FindControl("renshu")).Text;
            ((Label)work.FindControl("gongzidaiyu1")).Text = ((Label)work.FindControl("gongzi1")).Text;
            Panelwork.Controls.Add(work);
        }

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