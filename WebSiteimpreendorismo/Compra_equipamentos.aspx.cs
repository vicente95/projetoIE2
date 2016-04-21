using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Send_Click1(object sender, EventArgs e)
    {
    }
    protected void B_Create_User_Click(object sender, EventArgs e)
    {
        /*
        Page.Validate();
        if (!Page.IsValid) Panel1.Visible = true;
        else
        {

            L_Nome.Text = T_Nome.Text;
            L_Nif.Text = T_Nif.Text;
            L_Tel.Text = T_Tel.Text;
            L_Email.Text = Email.Text;
            L_Loc.Text = Lista_Freguesias.SelectedValue;
            L_Morada.Text = T_Morada.Text;
            L_Cod_Post.Text = T_Cod_Post.Text;
            L_Username.Text = UserName.Text;

            String Result = BaseDeDados.Add.Utilizador.Novo_Utilizador(T_Nome.Text, T_Nif.Text, T_Morada.Text, Lista_Freguesias.SelectedValue, L_Cod_Post.Text, Email.Text, T_Tel.Text, UserName.Text, Password.Text, "User");
            if (Result == "0")
            {
                Dados_User.Visible = true;
                InsertDados.Visible = false;
            }
            else
            {
                Panel1.Visible = true;
                L_Erro.Text = Result;
            }
        }*/

    }
    protected void B_Close_Error_Click(object sender, EventArgs e)
    {
       // Panel1.Visible = false;
        //L_Erro.Text = "";
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Validacao.Nif(source, args);
    }
    protected void ValUser_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Validacao.Username(source, args);
    }
}