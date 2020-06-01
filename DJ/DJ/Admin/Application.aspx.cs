using System;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.AceptJob(((GridViewRow)((LinkButton)sender).NamingContainer).Cells[0].Text, ((GridViewRow)((LinkButton)sender).NamingContainer).Cells[1].Text))
            Utility.JavaScript.FormAndRedirect("提示", "已通过申请", "Application.aspx", this);
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.RefuseJob(((GridViewRow)((LinkButton)sender).NamingContainer).Cells[0].Text, ((GridViewRow)((LinkButton)sender).NamingContainer).Cells[1].Text))
            Utility.JavaScript.FormAndRedirect("提示", "已驳回申请", "Application.aspx", this);
    }
}