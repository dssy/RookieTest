using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using UserManagement.Model;

namespace UserManagement
{
    public class UseriinfoDAO : IUserInfo
    {
        private readonly cttEntities ct;
        public UseriinfoDAO() {
             ct = new cttEntities();
        }
        public ActionResult DelectUser(int userid)
        {
           // cttEntities ct = new cttEntities();
            UsesrInfo user = new UsesrInfo();
            user.UserID = userid;
            ct.UsesrInfo.Attach(user);//对象添加到EF管理容器中
                                     //ct.UsesrInfo.Remove(ss);
            ct.Entry(user).State = System.Data.Entity.EntityState.Deleted;
            ct.SaveChanges();
            return new ViewResult();
        }

        public ActionResult InsertUser(string name, int Age, string Adress, string Email, string Sex)
        {
            //cttEntities Lists = new cttEntities();
            UsesrInfo user = new UsesrInfo();
            user.UserName = name;
            user.Age = Age.ToString();
            user.Address = Adress;
            user.Email = Email;
            user.Sex = Sex;
            ct.UsesrInfo.Add(user);
            ct.SaveChanges();
           return  new ViewResult();
        }

        public List<UsesrInfo> ShowList()
        {
           // cttEntities Lists = new cttEntities();
           var ss = ct.UsesrInfo.ToList();
            return ss;
        }

        public ActionResult UpdateUser(int userid, string name, int Age, string Adress, string Email, string Sex)
        {
           // cttEntities Lists = new cttEntities();
            UsesrInfo user = new UsesrInfo();
            var ss = ct.UsesrInfo.Find(userid);
            ss.UserName = name;
            ss.Age = Age.ToString();
            ss.Address = Adress;
            ss.Email = Email;
            ss.Sex = Sex;
            ct.UsesrInfo.Attach(ss);//对象添加到EF管理容器中
            ct.Entry(ss).State = System.Data.Entity.EntityState.Modified;
            ct.SaveChanges();
            return new ViewResult();
        }
    }
}
