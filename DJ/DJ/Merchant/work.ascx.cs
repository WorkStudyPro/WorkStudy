﻿using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class work : System.Web.UI.UserControl
{ 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void User(work work,SqlDataReader reader)
    {
        ((Button)work.FindControl("name")).Text = reader.GetString(2);
        ((Label)work.FindControl("time")).Text = reader.GetString(3);
        ((Label)work.FindControl("where")).Text = reader.GetString(4);
        ((Label)work.FindControl("renshu")).Text = reader.GetInt32(6).ToString();
        ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(7).ToString();

        ((Label)work.FindControl("name1")).Text = ((Button)work.FindControl("name")).Text;
        ((Label)work.FindControl("time1")).Text = ((Label)work.FindControl("time")).Text;
        ((Label)work.FindControl("where1")).Text = ((Label)work.FindControl("where")).Text;
        ((Label)work.FindControl("jieshao1")).Text = reader.GetString(5);
        ((Label)work.FindControl("renshu1")).Text = ((Label)work.FindControl("renshu")).Text;
        ((Label)work.FindControl("gongzidaiyu1")).Text = ((Label)work.FindControl("gongzi1")).Text;
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "block");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        light.Style.Add("display", "none");
    }

    protected void Button关闭兼职_Click(object sender, EventArgs e)
    {
        if (DAL.ManagerDAL.CloseJob(Session["account"].ToString(), name.Text))
        {
            Response.Redirect("index.aspx");
        }
    }
}