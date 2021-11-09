using Datos;
using Microsoft.EntityFrameworkCore;

namespace Persistencia
{
    public class MareiguaDbContext : DbContext
    {
        public MareiguaDbContext() { }

        public MareiguaDbContext(DbContextOptions<MareiguaDbContext> options) : base(options){}

        public virtual DbSet<Multiplo> Multiplos { get; set; }
    }

}
