using System;
using System.Web.Mvc;
using UserManagement.Model;

namespace UserManagement.HomeController
{
    public  class HomeController:Controller
    {
       // IsysFunctionServices
        private readonly cttEntities ct;
        private IUserInfo _userInfo;
        // private string s;
        public HomeController(IUserInfo userInfo) {
         
            ct = new cttEntities();
            _userInfo = userInfo;
           // ct.Database.CreateIfNotExists();
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        /// <summary>
        /// 用户列表
        /// </summary>
        /// <returns></returns>
        public ActionResult ShowList()
        { 
            ViewBag.list = _userInfo.ShowList();
            return View();
        }
        /// <summary>
        /// 新增用户
        /// </summary>
        [HttpPost]
        public ActionResult InsertUser(string name, int Age, string Adress, string Email, string Sex)
        {
            try
            {
                using (cttEntities ss = new cttEntities())
                {
                    _userInfo.InsertUser(name, Age, Adress, Email, Sex);
                }


            }
            catch (Exception ex)
            {

                throw ex;
            }
            return View();

        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="userid"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult DelectUser(int userid)
        {
            try
            {
                _userInfo.DelectUser(userid);

            }
            catch (Exception ex)
            {

                throw ex;
            }



            return View();

        }
        /// <summary>
        /// 更新用户数据
        /// </summary>
        /// <param name="name"></param>
        /// <param name="Age"></param>
        /// <param name="Adress"></param>
        /// <param name="Email"></param>
        /// <param name="Sex"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult UpdateUser(int userid, string name, int Age, string Adress, string Email, string Sex)
        {
            try
            {
                _userInfo.UpdateUser(userid,name, Age, Adress, Email, Sex);

            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            return View();

        }
    }
}
