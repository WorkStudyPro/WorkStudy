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
        SqlDataReader reader = DAL.ManagerDAL.SelectHistoryJob(Session["account"].ToString());
        while(reader.Read())
        {
            Student_HistoryWork work = (Student_HistoryWork)LoadControl("HistoryWork.ascx");
            work.History(work, reader);

            Panel1.Controls.Add(work);
        }
    }
}