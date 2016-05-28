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

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Enviar_formulario(object sender, EventArgs e)
    {
        //Registar o produto que pretende ser vendido
        int flag;

        flag = Escrever_para_base_dados.Registar_produto_comprar(T_Nome, T_Tel, Email, T_Produto, Lista_Tipo_de_produtos, T_descricao);

        if (flag == 1)
        {
            L_basededados.ForeColor = System.Drawing.Color.Red;
            L_basededados.Text = "Erro ao enviar formulario! Por favor preencha novamente";
        }
        else
        {
            L_basededados.Text = "";
            L_Nome.Text = T_Nome.Text;
            L_Tele.Text = T_Tel.Text;
            L_Email.Text = Email.Text;
            L_produto.Text = T_Produto.Text;
            L_tipoProd.Text = Lista_Tipo_de_produtos.SelectedItem.Text;
            L_des.Text = T_descricao.Text;

            L_acao.ForeColor = System.Drawing.Color.Green;
            L_acao.Text = "Feito com sucesso!";

        }
    }
}