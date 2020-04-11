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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string account = TextBox1.Text;
        string password = TextBox2.Text;
        if(account!= string.Empty&&password!= string.Empty)
        {
            if(BLL.ManagerBusiness.ManagerLogin(account,password))
            {
                //登录成功，数据存入session中
                Session["account"] = account;
                Session["logintime"] = DateTime.Now.ToString();
                //Utility.JavaScript.JavaScriptLocationHref("http://localhost:56935/index.aspx", this);
                Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转至首页", "http://localhost:56935/index.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
            }
        }
    }
}