using Model;
using System;

public partial class index : System.Web.UI.Page
{
    Manager manager = new Manager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        manager.Tel = TextBox2.Text;
        manager.Password = TextBox3.Text;
        manager.Account = new Random().Next(9999, 99999999).ToString();
        if (manager.Tel != string.Empty && manager.Password != string.Empty)
            if (BLL.ManagerBusiness.AddManager(manager))
            {
                //登录成功，数据存入session中
                Session["tel"] = manager.Tel;
                Session["ID"] = manager.Account;
                //弹窗
                
                Utility.JavaScript.FormAndRedirect("这是您的ID！如遗忘，将无法找回！",DAL.ManagerDAL.SelectId(manager.Tel).ToString(), "http://localhost:56935/login.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("该账号已存在，请重新填写", this);
            }
    }
}