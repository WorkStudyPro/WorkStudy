using System;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    /// <summary>
    /// Manager数据访问类
    /// </summary>
    public class ManagerDAL
    {
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
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerLogin", CommandType.StoredProcedure, p));

            return i > 0;
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
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ManagerRegister", CommandType.StoredProcedure, p));

            return i > 0;
        }

        /// <summary>
        /// 统计，判断商家账号是否存在
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static bool ManagerIsExist(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerIsExist", CommandType.StoredProcedure, p));

            return i > 0;
        }

        /// <summary>
        /// Id匹配tel
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

            return "";
        }
        /// <summary>
        /// 根据tel查询ID
        /// </summary>
        /// <param name="tel"></param>
        /// <returns></returns>
        public static int SelectId(string tel)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@tel" ,tel)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("selectId", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetInt32(0);

            return -1;
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="account">ID</param>
        /// <param name="pwd">新密码</param>
        /// <returns></returns>

        public static bool ManagerChangePwd(string account,string pwd)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Password",pwd)
            }; 
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerNewPassword", CommandType.StoredProcedure, p));

            return i > 0;
        }

        public static string SelectPrincpleName(string Account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account" ,Account)
            };
            SqlDataReader reader = SQLHelper.ExecuteReader("SelectName", CommandType.StoredProcedure, p);
            if (reader.Read())
                return reader.GetString(0);

            return "";
        }

    }
}
