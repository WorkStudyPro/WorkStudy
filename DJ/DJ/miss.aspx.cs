﻿using System;

public partial class miss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.IdMatchTel(TextBox1.Text) == TextBox2.Text||DAL.ManagerDAL.AIdMatchTel(TextBox1.Text)==TextBox2.Text || DAL.ManagerDAL.SIdMatchTel(TextBox1.Text) == TextBox2.Text)
            if (TextBox3.Text == Request.Cookies["CheckCode"].Value)
            {
                Session["account"] = TextBox1.Text;
                Response.Redirect("miss2.aspx");
            }
            else
                Utility.JavaScript.ErrorAlert("错误提示！", "请正确输入图中的验证码！", Page);
        else
            Utility.JavaScript.ErrorAlert("错误提示！", "请正确输入ID绑定的手机号码！", Page);
    }

    protected void Yzm1_Click(object sender, EventArgs e)
    {
        yzm1.ImageUrl = "ValidateCode.aspx";
    }
}