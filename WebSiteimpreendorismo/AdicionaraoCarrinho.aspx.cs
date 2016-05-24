using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using WingtipToys.Logic;


namespace WingtipToys
{
    public partial class AdicionaraoCarrinho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["ProductID"];
            int productId;
            if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out productId))
            {
                using (CarrinhodecomprasAction usersShoppingCart = new CarrinhodecomprasAction())
                {
                    usersShoppingCart.AddToCart(Convert.ToInt16(rawId));
                }

            }
            else
            {
                Debug.Fail("ERRO : O id do produto é nulo.");
                throw new Exception("ERRO: Recarregar o produto sem id");
            }
            Response.Redirect("/Carrinhoc.aspx");
        }
    }
}