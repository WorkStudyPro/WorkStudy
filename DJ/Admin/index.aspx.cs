using ASP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected Control control;
    protected void Button1_Click(object sender, EventArgs e)
    {

        set xx = (set)LoadControl("set.ascx");

        if (flag == false)
        {
            center.Controls.Add(xx);
        }

        if (flag == true)
        {
            center.Controls.Remove(xx);
            flag = false;
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        setpass pwd = (setpass)LoadControl("setpass.ascx");
        
        if (flag == false)
        {
            center.Controls.Add(pwd);
        }
        if (flag == true)
        {
            center.Controls.Remove(pwd);
            flag = false;
        }
    }
}