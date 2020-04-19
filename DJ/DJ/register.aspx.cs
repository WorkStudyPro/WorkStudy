using Model;
using System;

public partial class index : System.Web.UI.Page
{
    Manager manager= new Manager();
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
            //if (BLL.ManagerBusiness.AddManager(manager))
            {
                ////登录成功，数据存入session中
                //Session["tel"] =manager.Tel;
                //Session["ID"] = manager.Account;
                ////Utility.JavaScript.JavaScriptLocationHref("http://localhost:56935/login.aspx", this);

                //弹窗
                string scriptstrs = "";
                scriptstrs += "{swal('这是您的ID！请务必牢记！','13246547987', 'success');}";
                if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
                Utility.JavaScript.AlertAndRedirect("注册成功，点击确定跳转至登录页", "http://localhost:56935/login.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("该账号已存在，请重新填写", this);
            }
    }
}