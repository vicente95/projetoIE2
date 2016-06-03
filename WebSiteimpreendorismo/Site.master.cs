using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Logic;

public partial class SiteMaster : MasterPage
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;

    protected void Page_Init(object sender, EventArgs e)
    {
        // The code below helps to protect against XSRF attacks
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            {
                HttpOnly = true,
                Value = _antiXsrfTokenValue
            };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                responseCookie.Secure = true;
            }
            Response.Cookies.Set(responseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;
    }

    protected void master_Page_PreLoad(object sender, EventArgs e)
    {
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Context.GetOwinContext().Authentication.SignOut();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        using (CarrinhodecomprasAction usersShoppingCart = new CarrinhodecomprasAction())
        {
            string cartStr = string.Format("Carrinho Produtos({0})", usersShoppingCart.GetCount());
            cartCount.InnerText = cartStr;
        }
    }

    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        string nomet = "";
        WingtipToys.Logic.CarrinhodecomprasAction usersShoppingCart = new WingtipToys.Logic.CarrinhodecomprasAction();
        String cartId = usersShoppingCart.GetCartId();
        usersShoppingCart.ChangeCart(cartId, nomet);
    }


    protected void Buttonir_Click(object sender, EventArgs e)
    {
        string n = String.Format("{0}", Request.Form["pesquisa"]);
        string urlpesquisa = "Pagina_inicial_pesquiza.aspx?pesq=" + n;

        Response.Redirect(urlpesquisa);
    }


    protected void Buttonapagar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Pagina_Inicial.aspx");
    }

}