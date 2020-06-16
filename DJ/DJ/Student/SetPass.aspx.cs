using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void SetPassWord_Click(object sender, EventArgs e)
    {
        if (BLL.StudentBusiness.StudentLogin(Session["account"].ToString(), OldPwd.Text))
            if (DAL.ManagerDAL.StuChangePwd(Session["account"].ToString(), NewPwd2.Text))
                Utility.JavaScript.FormAndRedirect("提示", "修改成功，是否重新登录？", "../login.aspx", this);
            else
                Utility.JavaScript.ErrorAlert("错误提示", "修改失败，请重试", this);
    }
}