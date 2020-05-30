using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_IndexWork : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Index(Student_IndexWork work,SqlDataReader reader)
    {
        ((Label)work.FindControl("WorkName")).Text = reader.GetString(0);
        ((Label)work.FindControl("WorkTime")).Text = reader.GetString(1);
        ((Label)work.FindControl("WorkMoney")).Text = reader.GetInt32(2).ToString();
        ((Label)work.FindControl("WorkPlace")).Text = reader.GetString(3);
        ((Label)work.FindControl("WorkPeople")).Text = reader.GetInt32(4).ToString();
    }
}