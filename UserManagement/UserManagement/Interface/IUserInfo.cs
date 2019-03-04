using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using UserManagement.Model;

namespace UserManagement
{
     public  interface IUserInfo
    {
        List<UsesrInfo> ShowList();
        ActionResult InsertUser(string name, int Age, string Adress, string Email, string Sex);
        ActionResult DelectUser(int userid);
        ActionResult UpdateUser(int userid, string name, int Age, string Adress, string Email, string Sex);
        List<UsesrInfo> GetUsersByName(string name);
    }
}
