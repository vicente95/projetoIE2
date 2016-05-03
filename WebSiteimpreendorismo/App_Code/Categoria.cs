using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
    public class Categoria
    {
        [ScaffoldColumn(false), Key]
        public int CategoryID { get; set; }

        [Required, StringLength(100), Display(Name = "Nome")]
        public string CategoryName { get; set; }

        [Display(Name = "Descrição do produto")]
        public string Description { get; set; }

        public virtual ICollection<Produto> Produtos { get; set; }
    }
}