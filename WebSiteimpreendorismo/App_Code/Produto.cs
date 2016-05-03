/// <summary>
/// Summary description for Produto
/// </summary>
using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
    public class Produto
    {
        [ScaffoldColumn(false), Key]
        public int ProductID { get; set; }

        [Required, StringLength(100), Display(Name = "Nome")]
        public string ProductName { get; set; }

        [Required, StringLength(10000), Display(Name = "Descrição do produto"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Preço")]
        public double? UnitPrice { get; set; }

        public int? CategoryID { get; set; }

        public virtual Categoria Category { get; set; }
    }
}