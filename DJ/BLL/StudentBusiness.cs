using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class StudentBusiness
    {
        /// <summary>
        /// 学生登录
        /// </summary>
        /// <param name="account">账号</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        public static bool StudentLogin(string account, string password)
        {
            return DAL.ManagerDAL.StudentLogin(account, password);
        }
    }
}
