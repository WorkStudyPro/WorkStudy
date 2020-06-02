using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Merchant_StudentResume : System.Web.UI.UserControl
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
    protected void ButtonYes_Click(object sender, EventArgs e)
    {
    //    if (DAL.ManagerDAL.CloseJob(Session["account"].ToString(), name.Text))
    //    {
    //        Utility.JavaScript.ErrorAlert("提示", "已关闭兼职", this.Controls);
    //    }
    }
}