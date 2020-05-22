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
        if (TextBox2.Text != string.Empty && TextBox3.Text != string.Empty)
        {
            if (RadioButtonList1.SelectedValue == "商家")
            {
                Manager manager = new Manager
                {
                    Tel = TextBox2.Text,
                    Password = TextBox3.Text,
                    Account = new Random().Next(300000, 99999999).ToString()
                };
                if (BLL.ManagerBusiness.AddManager(manager))
                {
                    //注册成功弹窗提示ID
                    Utility.JavaScript.FormAndRedirect("这是您的ID！如遗忘，将无法找回！", DAL.ManagerDAL.SelectId(manager.Tel).ToString(), "http://localhost:56935/login.aspx", this);
                }
                else
                    Utility.JavaScript.ErrorAlert("错误提示！", "此手机号码已被注册！", Page);
            }
            else if (RadioButtonList1.SelectedValue == "管理员")
            {
                Admin admin = new Admin
                {
                    A_Tele = TextBox2.Text,
                    A_PassWord = TextBox3.Text,
                    A_ID = new Random().Next(100000, 200000)
                };
                if (BLL.AdminBusiness.AddAdmin(admin))
                {
                    Utility.JavaScript.FormAndRedirect("这是您的ID！如遗忘，将无法找回！", DAL.ManagerDAL.SelectAId(admin.A_Tele), "http://localhost:56935/login.aspx", this);
                }
                else
                    Utility.JavaScript.ErrorAlert("错误提示！", "此手机号码已被注册！", Page);
            }
        }
    }
}