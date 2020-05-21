using System;
using System.Data.SqlClient;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Label4.Text = 登录ID;
        SqlDataReader reader = DAL.ManagerDAL.SelectAdminInfo("156545");
        while (reader.Read())
        {
            Label2.Text = reader.GetString(0);
            Label6.Text = reader.GetString(1);
            Label8.Text = DateTime.Now.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Set.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SetPass.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Application.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recruitment.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Over.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Refuse.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Merchants.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/login.aspx");
    }
}
