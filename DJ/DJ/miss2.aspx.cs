using System;
using System.Web.UI;

public partial class miss2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.ManagerChangePwd(Session["account"].ToString(), TextBox2.Text))
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改成功，点击确定跳转至登录页", "http://localhost:56935/index.aspx", this);
        }
        else
        {
            Utility.JavaScript.ErrorAlert("错误提示！", "修改失败！可能的原因是密码不符合规范", Page);
        }
        
    }
}