using Model;
using System;


public partial class Job : System.Web.UI.Page
{
    JobData job = new JobData();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["PrincipalName"].ToString();
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        job.M_ID = Convert.ToInt32(Session["account"].ToString());
        job.W_Name = box1.Text;
        job.W_Time = box3.Text;
        job.W_Place = box6.Text;
        job.W_Description = box2.Text;
        job.W_People = Convert.ToInt32(box4.Text);
        job.W_Money = Convert.ToInt32(box5.Text);
        if (DAL.ManagerDAL.AddJob(job))
        {
            if(DAL.ManagerDAL.UpRealTime(Session["account"].ToString(), job.W_Name))
                Utility.JavaScript.FormAndRedirect("提示", "兼职发布成功", "http://localhost:56935/Merchant/index.aspx", this);
        }
            
        
    }
}