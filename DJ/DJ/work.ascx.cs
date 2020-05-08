using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class work : System.Web.UI.UserControl
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    public static void user(work work,SqlDataReader reader)
    {
        ((Label)work.FindControl("name")).Text = reader.GetString(2);
        ((Label)work.FindControl("time")).Text = reader.GetString(3);
        ((Label)work.FindControl("where")).Text = reader.GetString(4);
        ((Label)work.FindControl("renshu")).Text = reader.GetInt32(6).ToString();
        ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(7).ToString();

        ((Label)work.FindControl("name1")).Text = reader.GetString(2);
        ((Label)work.FindControl("time1")).Text = reader.GetString(3);
        ((Label)work.FindControl("where1")).Text = reader.GetString(4);
        ((Label)work.FindControl("jieshao1")).Text = reader.GetString(5);
        ((Label)work.FindControl("renshu1")).Text = reader.GetInt32(6).ToString();
        ((Label)work.FindControl("gongzidaiyu1")).Text = reader.GetInt32(7).ToString();
    }

}