using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    //筛选前的关闭按钮
    protected void Button2_Click(object sender, EventArgs e)
    {

    }


    //筛选按钮
    protected void select_Click(object sender, EventArgs e)
    {
        ListView1.Visible = false;
        GridView1.Visible = true;
    }
    //筛选后的关闭按钮
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {

    }
}