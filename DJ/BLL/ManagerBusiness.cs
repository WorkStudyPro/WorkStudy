﻿using Model;

namespace BLL
{
    /// <summary>
    /// 商家业务层
    /// </summary>
    public class ManagerBusiness
    {
        /// <summary>
        /// 商家登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool ManagerLogin(string account, string password)
        {
            return DAL.ManagerDAL.ManagerLogin(account, password);
        }
        /// <summary>
        /// 商家注册
        /// </summary>
        /// <param name="manager">对象</param>
        /// <returns></returns>
        public static bool AddManager(Manager manager)
        {
            //判断账号是否存在？
            if (DAL.ManagerDAL.ManagerIsExist(manager.Account))
            {
                return false;
            }
            else
                return DAL.ManagerDAL.AddManager(manager);
        }
    }
}
