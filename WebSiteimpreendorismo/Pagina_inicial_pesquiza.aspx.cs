﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using System.Web.ModelBinding;

namespace WingtipToys
{
    public partial class Pagina_inicial_pesquiza : System.Web.UI.Page
    {
        int tem_items;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public IQueryable<Produto> GetProducts2([QueryString("pesq")] string Nomeproduto)
        {
            var _db = new WingtipToys.Models.ContextoProduto();
            IQueryable<Produto> query = _db.Products;
            query = query.Where(p => p.ProductName.ToLower().Contains(Nomeproduto.ToLower()));
            tem_items = query.Count();
            lvDataPager1_Load(null, null);
            return query;

        }

        protected void lvDataPager1_Load(object sender, EventArgs e)
        {
            int numero = Int32.Parse(DropDownList1.SelectedItem.Text);
            lvDataPager1.PageSize = numero;
            if (tem_items > 0)
            {
                lvDataPager1.Visible = true;
                Panel1.Visible = true;
            }
            else
            {
                lvDataPager1.Visible = false;
                Panel1.Visible = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            String expression = "ProductID";
            SortDirection direction2 = SortDirection.Descending;
            ListaProdutos.Sort(expression, direction2);

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            String expression = "ProductName";
            SortDirection direction2 = SortDirection.Ascending;
            ListaProdutos.Sort(expression, direction2);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            String expression = "UnitPrice";
            SortDirection direction2 = SortDirection.Ascending;
            ListaProdutos.Sort(expression, direction2);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            String expression = "UnitPrice";
            SortDirection direction2 = SortDirection.Descending;
            ListaProdutos.Sort(expression, direction2);
        }
    }
}