using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinishWork : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Fuser(FinishWork work,SqlDataReader reader)
    {
        ((Button)work.FindControl("name")).Text = reader.GetString(0);
        ((Label)work.FindControl("time")).Text = reader.GetString(1);
        ((Label)work.FindControl("where")).Text = reader.GetString(2);
        ((Label)work.FindControl("renshu")).Text = reader.GetInt32(4).ToString();
        ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(5).ToString();

        ((Label)work.FindControl("name1")).Text = ((Button)work.FindControl("name")).Text;
        ((Label)work.FindControl("time1")).Text = ((Label)work.FindControl("time")).Text;
        ((Label)work.FindControl("where1")).Text = ((Label)work.FindControl("where")).Text;
        ((Label)work.FindControl("jieshao1")).Text = reader.GetString(3);
        ((Label)work.FindControl("renshu1")).Text = ((Label)work.FindControl("renshu")).Text;
        ((Label)work.FindControl("gongzidaiyu1")).Text = ((Label)work.FindControl("gongzi1")).Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "block");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "none");
    }
}