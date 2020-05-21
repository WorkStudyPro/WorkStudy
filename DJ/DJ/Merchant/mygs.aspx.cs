using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mygs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["PrincipalName"].ToString();
        SqlDataReader sda = DAL.ManagerDAL.SelectGSInfo(Session["account"].ToString()); 
        while (sda.Read())
        {
            companyname.Text = sda.GetString(3);
            companystar.Text = sda.GetString(8);
            companyplace.Text = sda.GetString(6);
            companyboss.Text = sda.GetString(2);
            companybosstel.Text = sda.GetString(5);

        }
    }
}