using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace UserManagement.Model
{
    public   class cttEntities : DbContext
    {
        public cttEntities() : base("name=cttEntitiesContext")
        {
             
        }
        public DbSet<UsesrInfo> UsesrInfo { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //解决EF动态建库数据库表名变为复数问题
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }


    }
}
