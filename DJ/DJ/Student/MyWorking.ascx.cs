using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyWorking : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Myworking(Student_MyWorking work, SqlDataReader reader)
    {
        ((Label)work.FindControl("WorkName")).Text = reader.GetString(2);
        ((Label)work.FindControl("WorkTime")).Text = reader.GetString(3);
        ((Label)work.FindControl("WorkMoney")).Text = reader.GetInt32(6).ToString();
        ((Label)work.FindControl("WorkPlace")).Text = reader.GetString(4);
        ((Label)work.FindControl("WorkPeople")).Text = reader.GetInt32(5).ToString();
    }
}