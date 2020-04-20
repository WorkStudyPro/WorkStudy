using System;
using System.Web.UI;

public partial class miss2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.ManagerChangePwd(Session["account"].ToString(), TextBox2.Text))
        {
            string scriptstrs = "";
            scriptstrs += "{swal({title: '提示',text: '修改成功!点击确定跳转到登录页面！',confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,},function(isConfirm) {if (isConfirm){location.href = 'http://localhost:56935/login.aspx'; } });}";
            if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "key"))
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "key", scriptstrs, true);
        }
        else
        {
            string scriptstrs = "";
            scriptstrs += "{swal({title: '错误提示！',text: '修改失败',confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,});}";
            if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "key"))
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "key", scriptstrs, true);
        }
        
    }
}