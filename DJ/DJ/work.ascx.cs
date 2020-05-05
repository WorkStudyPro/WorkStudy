using System;
using System.Data.SqlClient;

public partial class work : System.Web.UI.UserControl
{
    
    public static work GetWork()
    {
        work Work = new work();
        return Work;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader reader = DAL.ManagerDAL.SelectJob(Session["account"].ToString());
        while(reader.Read())
        {
            name.Text= reader.GetString(0);
            renshu.Text = reader.GetInt32(4).ToString();
            gongzi1.Text = reader.GetInt32(5).ToString();
            GetWork();
        }

    }

}