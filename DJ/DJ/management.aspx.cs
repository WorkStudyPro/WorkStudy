﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        work work = (work)LoadControl("~/work.ascx");
        work work1 = (work)LoadControl("~/work.ascx");
        Panel3.Controls.Add(work);
        Panel3.Controls.Add(work1);
        Panel3.Controls.Add(work);
    }

    protected void Button发布兼职_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:56935/Job.aspx");
    }
}