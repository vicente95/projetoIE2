using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys;
using WingtipToys.Models;

public partial class Carrinhocheckout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            using (WingtipToys.Logic.CarrinhodecomprasAction myCartOrders = new WingtipToys.Logic.CarrinhodecomprasAction())
            {
                List<Carrinho> myOrderList = myCartOrders.GetCartItems();

                DateTime dataagora = Escrever_para_base_dados.VerDataSemMilesegundos(DateTime.Now);
                decimal cartTotal = 0;
                cartTotal = myCartOrders.GetTotal();

                var myOrder = new Compras();
                myOrder.Data = dataagora;
                myOrder.Nome_utilizador = HttpContext.Current.User.Identity.Name.ToString();
                myOrder.Telefone = Retirar_da_base_dados.uti_telefone();
                myOrder.Morada = Retirar_da_base_dados.uti_morada();
                myOrder.Codigo_postal1 = Retirar_da_base_dados.uti_cod1();
                myOrder.Codigo_postal2 = Retirar_da_base_dados.uti_cod2();
                myOrder.Codigo_postal3 = Retirar_da_base_dados.uti_cod3();
                myOrder.Localidade = Retirar_da_base_dados.uti_localidade();
                myOrder.Total = Decimal.ToInt32(cartTotal);

                // Adicionar compra
                ContextoProduto _db = new ContextoProduto();

                _db.compra.Add(myOrder);
                _db.SaveChanges();


                // Adicionar cada produto
                for (int i = 0; i < myOrderList.Count; i++)
                {
                    //Criar as entradas para a compradetalhada dos produtos
                    var myOrderDetail = new CompraDetalhadas();
                    myOrderDetail.Compras_Id_compra = myOrder.Id_compra;
                    myOrderDetail.Nome_utilizador = HttpContext.Current.User.Identity.Name.ToString();
                    myOrderDetail.Produto_Id = myOrderList[i].ProductId;
                    myOrderDetail.Quantidade = myOrderList[i].Quantity;
                    myOrderDetail.Preco_unidade = myOrderList[i].Produtos.UnitPrice;


                    _db.compradetalhada.Add(myOrderDetail);
                    _db.SaveChanges();
                }

                //--Mostra informação na pagina
                // Mostra informação do utilizador da compra
                List<Compras> orderList = new List<Compras>();
                orderList.Add(myOrder);
                (LoginView1.FindControl("InformacaoCompra") as DetailsView).DataSource = orderList;
                (LoginView1.FindControl("InformacaoCompra") as DetailsView ).DataBind();

                // Mostrar os produtos da compra
                (LoginView1.FindControl("Produtos") as GridView).DataSource = myOrderList;
                (LoginView1.FindControl("Produtos") as GridView).DataBind();

                //Por o carrinho do utilizador vazio
                using (WingtipToys.Logic.CarrinhodecomprasAction usersShoppingCart =
                new WingtipToys.Logic.CarrinhodecomprasAction())
                {
                    usersShoppingCart.EmptyCart();
                }
            }
        }
    }

    protected void CheckoutConfirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pagina_inicial.aspx");
    }
}