using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader reader = DAL.ManagerDAL.SelectJob("154669");
        while (reader.Read())
        {
            work work = (work)LoadControl("work.ascx");
            ((Label)work.FindControl("name")).Text = reader.GetString(0);

            ((Label)work.FindControl("renshu")).Text = reader.GetInt32(4).ToString();
            ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(5).ToString();
            Panel3.Controls.Add(work);
        }
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}