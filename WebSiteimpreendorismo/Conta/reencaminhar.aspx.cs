using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using WingtipToys.Logic;

public partial class Conta_reencaminhar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nomet = HttpContext.Current.User.Identity.Name.ToString();
        string[] a = Roles.GetRolesForUser(nomet);

        WingtipToys.Logic.CarrinhodecomprasAction usersShoppingCart = new WingtipToys.Logic.CarrinhodecomprasAction();
        String cartId = usersShoppingCart.GetCartId();
        usersShoppingCart.MigrateCart(cartId, nomet);


        if (a[0] == "utilizador")
        {
            Response.Redirect("~/Utilizador/inicio_utilizador.aspx");
        }
        else if (a[0] == "administrador")
        {
            Response.Redirect("~/Administrador/inicio_administrador.aspx");
        }
    }
}