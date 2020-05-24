using System;
using System.Web;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["check"] != null)
                CheckBox1.Checked = Convert.ToBoolean(Request.Cookies["check"].Value);
            if (Request.Cookies["Account"] != null)
                TextBox1.Text = Request.Cookies["Account"].Value;
            if (Request.Cookies["Pwd"] != null && CheckBox1.Checked)
                TextBox2.Text = Request.Cookies["Pwd"].Value;
            else
                TextBox2.Text = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie Account = new HttpCookie("Account", TextBox1.Text)
        {
            Expires = DateTime.Now.AddMonths(3)
        };
        Response.Cookies.Add(Account);
        if (CheckBox1.Checked)
        {
            HttpCookie Pwd = new HttpCookie("Pwd", TextBox2.Text)
            {
                Expires = DateTime.Now.AddDays(3.0)
            };
            Response.Cookies.Add(Pwd);
        }
        if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty)
        {
            if (BLL.ManagerBusiness.ManagerLogin(TextBox1.Text, TextBox2.Text))
            {
                //登录成功，数据存入session中
                Session["account"] = TextBox1.Text;
                Session["logintime"] = DateTime.Now.ToString();
                //Utility.JavaScript.JavaScriptLocationHref("http://localhost:56935/index.aspx", this);
                //Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转至首页", "http://localhost:56935/index.aspx", this);
                Utility.JavaScript.FormAndRedirect("提示", "登录成功，点击确定跳转至首页", "http://localhost:56935/Merchant/index.aspx", this);
            }
            else if (BLL.AdminBusiness.AdminLogin(Convert.ToInt32(TextBox1.Text), TextBox2.Text))
            {
                Utility.JavaScript.FormAndRedirect("提示", "登录成功，点击确定跳转至首页", "http://localhost:56935/Admin/Application.aspx", this);
            }
            else
            {
                //Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
                Utility.JavaScript.ErrorAlert("提示", "账号或密码不正确，请重试", this);
            }

        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        if (CheckBox1.Checked)
        {
            Response.Cookies["check"].Value = "true";
            Request.Cookies["check"].Expires = DateTime.Now.AddMonths(3);
        }
        else
            Response.Cookies["check"].Value = "false";
    }
}