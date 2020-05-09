using System;

public partial class work : System.Web.UI.UserControl
{ 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    


    protected void Button1_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "block");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "none");
    }
}