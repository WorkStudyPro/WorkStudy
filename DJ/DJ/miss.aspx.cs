using System;

public partial class miss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.ManagerIsExist(TextBox1.Text))
            if (DAL.ManagerDAL.IdMatchTel(TextBox1.Text) == TextBox2.Text)
                if (TextBox3.Text == Request.Cookies["CheckCode"].Value)
                    Response.Redirect("http://localhost:56935/miss2.aspx");
                else
                {
                    string scriptstrs = "";
                    scriptstrs += "{swal({title: '错误提示！',text: '请正确输入图中的验证码！',confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,});}";
                    if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "key"))
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "key", scriptstrs, true);
                }
            else
            {
                string scriptstrs = "";
                scriptstrs += "{swal({title: '错误提示！',text: '请正确输入注册时使用的电话号码！',confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,});}";
                if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
            }
        else
        {
            string scriptstrs = "";
            scriptstrs += "{swal({title: '错误提示！',text: '您输入的ID不存在或不正确！',confirmButtonText: '确认!',confirmButtonColor: '#00b4aa',closeOnConfirm: false,});}";
            if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
        }
    }

    protected void Yzm1_Click(object sender, EventArgs e)
    {
        yzm1.ImageUrl = "ValidateCode.aspx";
    }
}