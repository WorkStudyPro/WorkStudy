using System;
using System.Data.SqlClient;

public partial class management2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader reader = DAL.ManagerDAL.SelectJob(Session["account"].ToString());
        SqlDataReader dataReader = DAL.ManagerDAL.SelectNewJob(Session["account"].ToString());
        while (reader.Read())
        {
            //判断是否关闭兼职，显示已关闭的兼职
            if (dataReader.Read())
                if (!dataReader.GetBoolean(8))
                {
                    FinishWork finishWork = (FinishWork)LoadControl("FinishWork.ascx");
                    finishWork.FUser(finishWork, reader);

                    Panel3.Controls.Add(finishWork);
                }


        }
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}