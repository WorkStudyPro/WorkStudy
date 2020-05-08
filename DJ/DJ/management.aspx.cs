﻿using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader reader = DAL.ManagerDAL.SelectJob(Session["account"].ToString());
        while (reader.Read())
        {
            work work = (work)LoadControl("work.ascx");
            ((Label)work.FindControl("name")).Text = reader.GetString(0);
            ((Label)work.FindControl("time")).Text = reader.GetString(1);
            ((Label)work.FindControl("where")).Text = reader.GetString(2);
            ((Label)work.FindControl("renshu")).Text = reader.GetInt32(4).ToString();
            ((Label)work.FindControl("gongzi1")).Text = reader.GetInt32(5).ToString();
            user(work, reader);
            //((Label)work.FindControl("name1")).Text = reader.GetString(0);
            //((Label)work.FindControl("time1")).Text = reader.GetString(1);
            //((Label)work.FindControl("where1")).Text = reader.GetString(2);
            //((Label)work.FindControl("jieshao1")).Text = reader.GetString(3);
            //((Label)work.FindControl("renshu1")).Text = reader.GetInt32(4).ToString();
            //((Label)work.FindControl("gongzidaiyu1")).Text = reader.GetInt32(5).ToString();

            Panel3.Controls.Add(work);
        }

    }

    public static void user(work work,SqlDataReader reader)
    {
        ((Label)work.FindControl("name1")).Text = reader.GetString(0);
        ((Label)work.FindControl("time1")).Text = reader.GetString(1);
        ((Label)work.FindControl("where1")).Text = reader.GetString(2);
        ((Label)work.FindControl("jieshao1")).Text = reader.GetString(3);
        ((Label)work.FindControl("renshu1")).Text = reader.GetInt32(4).ToString();
        ((Label)work.FindControl("gongzidaiyu1")).Text = reader.GetInt32(5).ToString();
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}