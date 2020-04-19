using System;

public partial class miss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.ManagerIsExist(TextBox1.Text))
        {
            if (DAL.ManagerDAL.IdMatchTel(TextBox1.Text) == TextBox2.Text)
                Response.Write("ok");
        }
        if (TextBox3.Text == Request.Cookies["CheckCode"].Value)
        {
            Response.Redirect("http://localhost:56935/miss2.aspx");
        }
        
    }

    protected void Yzm1_Click(object sender, EventArgs e)
    {
        yzm1.ImageUrl = "ValidateCode.aspx";
    }
}