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
                string scriptstrs = "";
                scriptstrs += "{swal({title: '这是您的ID！',text: " + DAL.ManagerDAL.SelectId(manager.Tel) + ",confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,},function(isConfirm) {if (isConfirm){location.href = 'http://localhost:56935/login.aspx'; } });}";
                if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "key"))
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "key", scriptstrs, true);
            }
            else
            {
                Utility.JavaScript.Alert("该账号已存在，请重新填写", this);
            }
    }
}