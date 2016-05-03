using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;
namespace WingtipToys.Models
{
    public class ContextoProduto : DbContext
    {
        public ContextoProduto() : base("WingtipToys")
        {
        }
        public DbSet<Categoria> Categories { get; set; }
        public DbSet<Produto> Products { get; set; }
    }
}