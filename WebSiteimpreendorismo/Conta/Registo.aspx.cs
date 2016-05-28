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


public partial class Account_Register : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel_login.Visible = false;
        panel1.Visible = true;
        Panel_Recupera_email.Visible = false;
        Panel_Recupera_questao.Visible = false;
        Panel_registo.Visible = true;
        Label3.Text =  "";


        //CriarCategorias(sender, e);

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        //criar o utilizador
        

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;

        TextBox email = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        TextBox nome = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        TextBox telefone = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Telefone");
        TextBox contribuinte = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("n_contribuinte");
        string nomedeutilizador = email.Text;


        int existe = 0;
        existe = Validacoes.pesquisa_email(contribuinte);

        if (existe ==1)
        {
            Label3.Text = "Esse email já esta registado!!!";

        }
        else
        {
            //Registar utilizador na nossa tabela
            string command2 = "INSERT INTO [Utilizadores] ([Nome], [N_contribuinte], [Telefone], [Morada], [Codigo_postal1], [Codigo_postal2], [Codigo_postal3], [Localidade], [Email_NomeUtil]) VALUES (@id1, @id2, @id3, @id4, @id5, @id6, @id7, @id8, @id9)";
            SqlConnection co = new SqlConnection(connectionString);
            SqlCommand cmd2 = new SqlCommand(command2, co);
            cmd2.Parameters.AddWithValue("@id1", nome.Text);
            cmd2.Parameters.AddWithValue("@id2", contribuinte.Text);
            cmd2.Parameters.AddWithValue("@id3", telefone.Text);
            cmd2.Parameters.AddWithValue("@id4", Morada.Text);
            cmd2.Parameters.AddWithValue("@id5", cod1.Text);
            cmd2.Parameters.AddWithValue("@id6", cod2.Text);
            cmd2.Parameters.AddWithValue("@id7", cod3.Text);
            cmd2.Parameters.AddWithValue("@id8", Loca.Text);
            cmd2.Parameters.AddWithValue("@id9", email.Text);

            co.Open();
            cmd2.ExecuteNonQuery();
            co.Close();

            //acrescentar nas roles o utilizador como utilizador normal
            string[] RegistaRol = { nomedeutilizador };
            Roles.AddUsersToRole(RegistaRol, "utilizador");

            Label3.Text = "";
            panel1.Visible = false;
            string userId = Membership.GetUser(nomedeutilizador).ProviderUserKey.ToString();

            using (WingtipToys.Logic.CarrinhodecomprasAction usersShoppingCart = new WingtipToys.Logic.CarrinhodecomprasAction())
                {
                  String cartId = usersShoppingCart.GetCartId();
                  usersShoppingCart.MigrateCart(cartId, nomedeutilizador);
                }

        }

      
      


    }




    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        Validacoes.Nif(source, args);
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
    protected void CriarCategorias(object sender, EventArgs e)
    {
        string[] Categorias = { "utilizador", "administrador" };

        foreach (string cat in Categorias)
            if (!Roles.RoleExists(cat))
            {
                Roles.CreateRole(cat);

            }
        return;
    }
}