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
        SqlDataReader reader = DAL.ManagerDAL.SelectAllJob();
        while (reader.Read())
            if (reader.GetString(8).Trim() == "2")
            {
                Student_Work work = (Student_Work)LoadControl("Work.ascx");
                work.StuFind(work, reader);

                Panel1.Controls.Add(work);
            }
    }
}