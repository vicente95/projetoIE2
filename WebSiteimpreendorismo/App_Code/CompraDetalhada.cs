using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
    public class CompraDetalhadas
    {
        [ScaffoldColumn(false), Key]
        public int Id_compradetalhada { get; set; }

        public int Compras_Id_compra { get; set; }

        public string Nome_utilizador { get; set; }

        public int Produto_Id { get; set; }

        public int Quantidade { get; set; }

        public double? Preco_unidade { get; set; }
    }
}