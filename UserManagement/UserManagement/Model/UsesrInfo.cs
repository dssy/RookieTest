using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Entity.Infrastructure;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Data.Entity;

namespace UserManagement
{
  public   class UsesrInfo
    {
       
        [Key]
        
      public int UserID { get; set; }
        public string UserName { get; set; }
        public string Age { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Sex { get; set; }

       

      
    }
}
