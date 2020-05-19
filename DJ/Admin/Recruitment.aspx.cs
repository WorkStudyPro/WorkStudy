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
    
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "select * from Table_Work";
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();

            //if (Request.QueryString["J_ID"] != null)
            //{
            //    conn.Open();
            //    SqlDataAdapter da1 = new SqlDataAdapter("select * from Table_Work where J_ID=" + Request.QueryString["J_ID"] + "", conn);
            //    DataSet ds1 = new DataSet();
            //    sda.Fill(ds1);
            //    conn.Close();

            //    DataRowView drv = ds1.Tables[0].DefaultView[0];
            //    TextBox11.Text = drv["W_Name"].ToString();
            //    TextBox12.Text = drv["W_Time"].ToString();
            //    TextBox13.Text = drv["W_Place"].ToString();
            //    TextBox14.Text = drv["W_Description"].ToString();
            //    TextBox15.Text = drv["W_People"].ToString();
            //    TextBox16.Text = drv["W_Money"].ToString();
            //}


        }
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
        //TextBox11.Visible = true;
        //TextBox12.Visible = true;
       
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //using (SqlConnection conn = new SqlConnection(constr))
        //{
        //    conn.Open();
        //    string str = "update yuan set 姓名='" + TextBox3.Text + "',性别='" + TextBox4.Text + "',职称='" + TextBox5.Text + "',工资='" + TextBox6.Text + "' where 工号=" + TextBox2.Text;
        //    SqlCommand comm = new SqlCommand(str, conn);
        //    int result = comm.ExecuteNonQuery();
        //    SqlDataAdapter da = new SqlDataAdapter("select * from yuan", conn);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    conn.Close();
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();

        //}
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}