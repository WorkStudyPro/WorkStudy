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
                    scriptstrs += "{swal('请输入正确的验证码！','','success');}";
                    if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
                }
        //    else
        //    {
        //        string scriptstrs = "";
        //        scriptstrs += "{swal('请输入正确的电话号码！','','success');}";
        //        if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
        //            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
        //    }
        //else
        //{
        //    string scriptstrs = "";
        //    scriptstrs += "{swal('请输入正确的ID！','','success');}";
        //    if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "keys"))
        //        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "keys", scriptstrs, true);
        //}
    }

    protected void Yzm1_Click(object sender, EventArgs e)
    {
        yzm1.ImageUrl = "ValidateCode.aspx";
    }
}