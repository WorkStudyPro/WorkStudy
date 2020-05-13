using System;
using System.Data.SqlClient;

public partial class management2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["PrincipalName"].ToString();
        SqlDataReader sqlData = DAL.ManagerDAL.SelectJob(Session["account"].ToString());
        
            while (sqlData.Read())
                if (!sqlData.GetBoolean(6))
                {
                    FinishWork work = (FinishWork)LoadControl("FinishWork.ascx");
                    work.Fuser(work, sqlData);

                    Panel3.Controls.Add(work);
                }
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}