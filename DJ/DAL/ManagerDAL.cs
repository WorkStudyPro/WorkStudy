using Model;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    /// <summary>
    /// Manager数据访问类
    /// </summary>
    public class ManagerDAL
    {

        //商家
        /// <summary>
        /// 商家登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool ManagerLogin(string account, string password)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Password",password)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerLogin", CommandType.StoredProcedure, p)) > 0;
        }
        /// <summary>
        /// 增，注册商家账号，传递实参
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool AddManager(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.Account),
                new SqlParameter("@Password",manager.Password),
                new SqlParameter("@Tel",manager.Tel)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("ManagerRegister", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 查询ID是否存在,若存在返回ID，不存在返回null;
        /// </summary>
        /// <param name="tel"></param>
        /// <returns></returns>
        public static string SelectId(string tel)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@tel" ,tel)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("selectId", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetInt32(0).ToString();

            return null;
        }

        /// <summary>
        /// 查询电话号码，若存在返回true,不存在返回false
        /// </summary>
        /// <param name="tel"></param>
        /// <returns></returns>
        public static bool SelectTel(string tel)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Tel",tel)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("SelectTel", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// Id匹配tel，若匹配，返回tel，不匹配返回null
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static string IdMatchTel(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account" ,account)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("IdMatchTel", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetString(0);

            return null;
        }

        /// <summary>
        /// 查询信息,若查询到信息，则返回信息，foe则返回null
        /// </summary>
        /// <param name="account">查询的ID</param>
        /// <param name="mername">调用的存储过程（查询什么信息）</param>
        /// <returns></returns>
        public static string SelectInfo(string account, string mername)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account" ,account)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader(mername, CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetString(0);

            return null;
        }
        
        /// <summary>
        /// 修改密码，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account">ID</param>
        /// <param name="pwd">新密码</param>
        /// <returns></returns>
        public static bool ManagerChangePwd(string account, string pwd)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Password",pwd)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerNewPassword", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 修改负责人名字，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool ChangePrincipalName(string account, string name)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Principalname",name)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ChangeName", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 修改性别，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account"></param>
        /// <param name="sex"></param>
        /// <returns></returns>
        public static bool ChangeSex(string account, string sex)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Sex",sex)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ChangeSex", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 修改电话号码，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account"></param>
        /// <param name="tel"></param>
        /// <returns></returns>
        public static bool ChangeTel(string account, string tel)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@tel",tel)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ChangeTel", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 修改邮箱，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account"></param>
        /// <param name="email"></param>
        /// <returns></returns>
        public static bool ChangeEmail(string account, string email)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@email",email)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ChangeEmail", CommandType.StoredProcedure, p)) > 0;
        }

        /// <summary>
        /// 修改地址，修改成功返回true，否则返回false
        /// </summary>
        /// <param name="account"></param>
        /// <param name="adress"></param>
        /// <returns></returns>
        public static bool ChangeAdress(string account, string adress)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@adress",adress)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("ChangeAdress", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool AddJob(JobData jobData)
        {
            SqlParameter[] p = new SqlParameter[]
            {
               new SqlParameter("@ID",jobData.M_ID),
               new SqlParameter("@Name",jobData.W_Name),
               new SqlParameter("@Time",jobData.W_Time),
               new SqlParameter("@Place",jobData.W_Place),
               new SqlParameter("@Descrip",jobData.W_Description),
               new SqlParameter("@People",jobData.W_People),
               new SqlParameter("@Money",jobData.W_Money)
            };
            return SQLHelper.ExecuteNonQuery("AddJob", CommandType.StoredProcedure, p) > 0;
        }

        public static SqlDataReader SelectGSInfo(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account)
            };
            return SQLHelper.ExecuteReader("SelectInfo", CommandType.StoredProcedure, p);
        }

        public static SqlDataReader SelectJob(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account)
            };
            return SQLHelper.ExecuteReader("SelectJob", CommandType.StoredProcedure, p);
        }

        public static SqlDataReader SelectNewJob(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account)
            };
            return SQLHelper.ExecuteReader("SelectNewWork", CommandType.StoredProcedure, p);
        }

        public static int SelectJobCount(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account" ,account)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("SelectJobCount", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetInt32(0);

            return 0;
        }

        public static bool CloseJob(string account,string name)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@name",name)
            };

            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("CloseJob", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool UpRealTime(string account,string name)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@JobName",name)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("UpRealseTime", CommandType.StoredProcedure, p)) > 0;
        }



        //管理员

        public static bool AdminLogin(int account,string pwd)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@PWD",pwd)
            };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("AdminLogin", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool AddAdmin(Admin admin)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",admin.A_ID),
                new SqlParameter("@PWD",admin.A_PassWord),
                new SqlParameter("@Tele",admin.A_Tele)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("AdminRegister", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool AceptJob(string account, string name)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@Name",name)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("AceptJob", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool RefuseJob(string account, string name)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@Name",name)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("RefuseJob", CommandType.StoredProcedure, p)) > 0;
        }

        public static SqlDataReader SelectAdminInfo(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account)
            };
            return SQLHelper.ExecuteReader("SelectAdminInfo", CommandType.StoredProcedure, p);
        }

        public static bool AdminChangePwd(string account, string pwd)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@ID",account),
                new SqlParameter("@PWD",pwd)
            };
            return Convert.ToInt32(SQLHelper.ExecuteNonQuery("AdminChangePwd", CommandType.StoredProcedure, p)) > 0;
        }

        public static bool SelectATel(string a_Tele)
        {
            SqlParameter[] p = new SqlParameter[]
             {
                new SqlParameter("@Tel",a_Tele)
             };
            return Convert.ToInt32(SQLHelper.ExecuteScalar("SelectTele", CommandType.StoredProcedure, p)) > 0;
        }

        public static string SelectAId(string a_Tele)
        { SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@tel" ,a_Tele)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("selectAID", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetInt32(0).ToString();

            return null;
        }
    }
    
}
