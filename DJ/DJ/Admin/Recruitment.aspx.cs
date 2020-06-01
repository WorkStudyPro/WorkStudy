using System;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //筛选前的关闭按钮
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.CloseJob(((Label)ListView1.Items[0].Controls[0].FindControl("M_IDLabel")).Text, ((Label)ListView1.Items[0].Controls[0].FindControl("W_NameLabel")).Text))
            Utility.JavaScript.FormAndRedirect("提示", "已关闭该兼职", "http://localhost:56935/Admin/Recruitment.aspx", this);
    }

    //筛选按钮
    protected void Select_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
            Response.Redirect("http://localhost:2166/Recruitment.aspx");
        else
        {
            ListView1.Visible = false;
            GridView1.Visible = true;
        }

    }
    //筛选后的关闭按钮
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.CloseJob(((Label)((GridViewRow)((LinkButton)sender).NamingContainer).FindControl("Label2")).Text, ((Label)((GridViewRow)((LinkButton)sender).NamingContainer).FindControl("Label3")).Text))
            Utility.JavaScript.FormAndRedirect("提示", "已关闭该兼职", "http://localhost:56935/Admin/Recruitment.aspx", this);
    }
}