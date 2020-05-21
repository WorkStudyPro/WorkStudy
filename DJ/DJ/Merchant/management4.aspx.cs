using System;
using System.Data.SqlClient;

public partial class management4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["PrincipalName"].ToString();
        SqlDataReader reader = DAL.ManagerDAL.SelectJob(Session["account"].ToString());
        while (reader.Read())
        
            if (reader.GetString(8).Trim()=="3")
            {
                work work = (work)LoadControl("work.ascx");
                work.User(work, reader);

                Panel3.Controls.Add(work);
            }
        
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Merchant/Job.aspx");
    }
}