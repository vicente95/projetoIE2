using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using System.Web.ModelBinding;

namespace WingtipToys
{
    public partial class Pagina_Inicial : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Produto> GetProducts([QueryString("id")] int? categoryId)
        {
            var _db = new WingtipToys.Models.ContextoProduto();
            IQueryable<Produto> query = _db.Products;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }
            return query;
        }

    }
}
