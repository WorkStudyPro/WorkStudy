﻿using System;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        work worko = (work)Page.LoadControl("~/work.ascx");

        Panelwork.Controls.Add(worko);
        
    }
}