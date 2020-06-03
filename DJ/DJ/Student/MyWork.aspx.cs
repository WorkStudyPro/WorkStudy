using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader reader =DAL.ManagerDAL.SelectStuWorking(Session["account"].ToString());
        while(reader.Read())
        {
            Student_MyWorking working = (Student_MyWorking)LoadControl("MyWorking.ascx");
            working.Myworking(working, reader);

            Panel1.Controls.Add(working);

        }
    }
}