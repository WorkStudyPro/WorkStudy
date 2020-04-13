
using Model;
using System;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager manager= new Manager();
        manager.Account=new Random().Next(100000, 1000000).ToString();
        manager.Tel = TextBox2.Text;
        manager.Password = TextBox3.Text;
        if (manager.Tel != string.Empty && manager.Password != string.Empty)
        {
            if (BLL.ManagerBusiness.AddManager(manager))
            {
                //登录成功，数据存入session中
                Session["tel"] =manager.Tel;
                Session["ID"] = manager.Account;
                //Session["logintime"] = DateTime.Now.ToString();
                //Utility.JavaScript.JavaScriptLocationHref("http://localhost:56935/login.aspx", this);
                Utility.JavaScript.AlertAndRedirect("注册成功，点击确定跳转至登录页", "http://localhost:56935/login.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
            }
        }

    }
}