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
    public partial class naofaznada : System.Web.UI.Page
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

        protected void btn1_Click(object sender, EventArgs e)
        {
            // do something
            //Label2.Text = "2";
            //Label1.Text = Label2.Text;
            DropDownList1.SelectedIndex = 1;
        }
    }
}