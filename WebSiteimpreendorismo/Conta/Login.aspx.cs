using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel_login.Visible = true;
        Panel_Recupera_email.Visible = false;
        Panel_Recupera_questao.Visible = false;
        Panel_registo.Visible = false;
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Validacao.Nif(source, args);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel_login.Visible = true;
        Panel_registo.Visible = false;
        Panel_Recupera_questao.Visible = false;
        Panel_Recupera_email.Visible = false;

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel_login.Visible = false;
        Panel_registo.Visible = false;
        Panel_Recupera_questao.Visible = true;
        Panel_Recupera_email.Visible = false;

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel_login.Visible = false;
        Panel_registo.Visible = false;
        Panel_Recupera_questao.Visible = false;
        Panel_Recupera_email.Visible = true;

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel_login.Visible = false;
        Panel_registo.Visible = true;
        Panel_Recupera_questao.Visible = false;
        Panel_Recupera_email.Visible = false;

    }
}