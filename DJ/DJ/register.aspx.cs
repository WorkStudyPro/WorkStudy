using Model;
using System;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager zs = new Manager();
        zs.Account = "zsss";//
        zs.Password = "123";

        if (BLL.ManagerBusiness.AddManager(zs))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('ok')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('NOO')</script>");
        }
    }
}