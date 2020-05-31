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

        SqlDataReader reader = DAL.ManagerDAL.SelectJobS();
        int count = 0; 
        while (reader.Read())
        {
            Student_IndexWork work = (Student_IndexWork)LoadControl("IndexWork.ascx");
            work.Index(work, reader);

            Panel1.Controls.Add(work);
            count++;
            if (count == 4)
                break;
        }


    }
}