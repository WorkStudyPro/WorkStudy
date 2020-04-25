using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        Name.Visible = false;
        Sex.Visible = false;
        Tel.Visible = false;
        Vx.Visible = false;
        Mail.Visible = false;
        Home.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button6.Visible = false;
        cancel.Visible = false;
        cancel2.Visible = false;
        cancel3.Visible = false;
        cancel4.Visible = false;
        cancel5.Visible = false;
        cancel6.Visible = false;

    }

    protected void GG_Click(object sender, EventArgs e)
    {
        cancel.Visible = true;
        Name.Visible = true;
        Label12.Visible = false;
        GG.Visible = false;
        Button1.Visible = true;
        GG2.Enabled = false; GG3.Enabled = false; GG4.Enabled = false; GG5.Enabled = false; GG6.Enabled = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Name.Visible = false;
        Label12.Visible = true;
        GG.Visible = true;
        Button1.Visible = false;
        Label12.Text = Name.Text;
        if(Name.Text==string.Empty)
        {
             Utility.JavaScript.FormAndRedirect("提示", "修改名称不能为空！", "", this);
        }
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Name.Visible = false;
        Label12.Visible = true;
        GG.Visible = true;
        Button1.Visible = false;
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void GG2_Click(object sender, EventArgs e)
    {
        cancel2.Visible = true;
        Sex.Visible = true;
        Label15.Visible = false;
        GG2.Visible = false;
        Button2.Visible = true;
        GG.Enabled = false; GG3.Enabled = false; GG4.Enabled = false; GG5.Enabled = false; GG6.Enabled = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Sex.Visible = false;
        Label15.Visible = true;
        GG2.Visible = true;
        Button2.Visible = false;
        Label15.Text = Sex.Text;
        if (Sex.Text == string.Empty)
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改性别不能为空！", "", this);
        }
        GG.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void cancel2_Click(object sender, EventArgs e)
    {
        Sex.Visible = false;
        Label15.Visible = true;
        GG2.Visible = true;
        Button2.Visible = false;
        GG.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void GG3_Click(object sender, EventArgs e)
    {
        cancel3.Visible = true;
        Tel.Visible = true;
        Label18.Visible = false;
        GG3.Visible = false;
        Button3.Visible = true;
        GG2.Enabled = false; GG.Enabled = false; GG4.Enabled = false; GG5.Enabled = false; GG6.Enabled = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Tel.Visible = false;
        Label18.Visible = true;
        GG3.Visible = true;
        Button3.Visible = false;
        Label18.Text = Tel.Text;
        if (Tel.Text == string.Empty)
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改手机号码不能为空！", "", this);
        }
        GG2.Enabled = true; GG.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void cancel3_Click(object sender, EventArgs e)
    {
        Tel.Visible = false;
        Label18.Visible = true;
        GG3.Visible = true;
        Button3.Visible = false;
        GG2.Enabled = true; GG.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void GG4_Click(object sender, EventArgs e)
    {
        cancel4.Visible = true;
        Vx.Visible = true;
        Label21.Visible = false;
        GG4.Visible = false;
        Button4.Visible = true;
        GG2.Enabled = false; GG3.Enabled = false; GG.Enabled = false; GG5.Enabled = false; GG6.Enabled = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Vx.Visible = false;
        Label21.Visible = true;
        GG4.Visible = true;
        Button4.Visible = false;
        Label21.Text = Vx.Text;
        if (Vx.Text == string.Empty)
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改微信不能为空！", "", this);
        }
        GG2.Enabled = true; GG3.Enabled = true; GG.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void cancel4_Click(object sender, EventArgs e)
    {
        Vx.Visible = false;
        Label21.Visible = true;
        GG4.Visible = true;
        Button4.Visible = false;
        GG2.Enabled = true; GG3.Enabled = true; GG.Enabled = true; GG5.Enabled = true; GG6.Enabled = true;
    }

    protected void GG5_Click(object sender, EventArgs e)
    {
        cancel5.Visible = true;
        Mail.Visible = true;
        Label24.Visible = false;
        GG5.Visible = false;
        Button5.Visible = true;
        GG2.Enabled = false; GG3.Enabled = false; GG4.Enabled = false; GG.Enabled = false; GG6.Enabled = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Mail.Visible = false;
        Label24.Visible = true;
        GG5.Visible = true;
        Button5.Visible = false;
        Label24.Text = Mail.Text;
        if (Mail.Text == string.Empty)
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改邮箱不能为空！", "", this);
        }
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG.Enabled = true; GG6.Enabled = true;
    }

    protected void cancel5_Click(object sender, EventArgs e)
    {
        Mail.Visible = false;
        Label24.Visible = true;
        GG5.Visible = true;
        Button5.Visible = false;
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG.Enabled = true; GG6.Enabled = true;
    }

    protected void GG6_Click(object sender, EventArgs e)
    {
        cancel6.Visible = true;
        Home.Visible = true;
        Label27.Visible = false;
        GG6.Visible = false;
        Button6.Visible = true;
        GG2.Enabled = false; GG3.Enabled = false; GG4.Enabled = false; GG5.Enabled = false; GG.Enabled = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Home.Visible = false;
        Label27.Visible = true;
        GG6.Visible = true;
        Button6.Visible = false;
        Label27.Text = Home.Text;
        if (Home.Text == string.Empty)
        {
            Utility.JavaScript.FormAndRedirect("提示", "修改地址不能为空！", "", this);
        }
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG.Enabled = true;
    }

    protected void cancel6_Click(object sender, EventArgs e)
    {
        Home.Visible = false;
        Label27.Visible = true;
        GG6.Visible = true;
        Button6.Visible = false;
        GG2.Enabled = true; GG3.Enabled = true; GG4.Enabled = true; GG5.Enabled = true; GG.Enabled = true;
    }
}