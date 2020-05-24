using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
   public class AdminBusiness
    {
        public static bool AdminLogin(int account,string pwd)
        {
            return DAL.ManagerDAL.AdminLogin(account, pwd);
        }

        public static bool AddAdmin(Admin admin)
        {
            //判断电话号码是否被注册过
            if (!DAL.ManagerDAL.SelectATel(admin.A_Tele))
                //判断ID是否存在
                if (DAL.ManagerDAL.SelectAId(admin.A_Tele) != null)
                    return false;
                else
                    return DAL.ManagerDAL.AddAdmin(admin);
            else
                return false;
        }
    }
}
