using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (BLL.AdminBusiness.AdminLogin(Convert.ToInt32( Session["account"]), TextBox1.Text))
            if (DAL.ManagerDAL.AdminChangePwd(Session["account"].ToString(), TextBox3.Text))
                Utility.JavaScript.FormAndRedirect("提示", "修改成功，是否重新登录？", "http://localhost:56935/login.aspx", this);
            else
                Utility.JavaScript.ErrorAlert("错误提示", "修改失败，请重试", this);
    }
}