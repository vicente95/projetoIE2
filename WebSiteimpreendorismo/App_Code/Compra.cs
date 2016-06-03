using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.ComponentModel;

namespace WingtipToys.Models
{
    public class Compras
    {
        [ScaffoldColumn(false), Key]
        public int Id_compra { get; set; }

        public System.DateTime Data { get; set; }

        public string Nome_utilizador { get; set; }

        public int Telefone { get; set; }

        public string Morada { get; set; }

        public int Codigo_postal1 { get; set; }

        public int Codigo_postal2 { get; set; }

        public string Codigo_postal3 { get; set; }

        public string Localidade { get; set; }

        public int Total { get; set; }

        public List<CompraDetalhadas> compradetalhada { get; set; }
    }
}