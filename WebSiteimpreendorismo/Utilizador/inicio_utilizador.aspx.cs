using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Administrador_inicio_utilizador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Mostrar.BindGrid(GridView1);
        Mostrar.BindGrid2(GridView2);
        Panel1.Visible = false;
        //string str = "This is a test";
        //str = str.Replace(" ", String.Empty);
       // Label2.Text=str;


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.ForeColor = System.Drawing.Color.Black;
        Label2.Text = "";
        Panel1.Visible = true;
        Textnome.Text = GridView1.SelectedRow.Cells[2].Text;
        Textemail.Text = GridView1.SelectedRow.Cells[1].Text;
        Textcontribuinte.Text = GridView1.SelectedRow.Cells[3].Text;
        Texttelefone.Text = GridView1.SelectedRow.Cells[4].Text;
        Morada.Text = GridView2.Rows[0].Cells[0].Text;
        cod1.Text = GridView2.Rows[0].Cells[1].Text;
        cod2.Text = GridView2.Rows[0].Cells[2].Text;
        cod3.Text = GridView2.Rows[0].Cells[3].Text;
        Loca.Text = GridView2.Rows[0].Cells[4].Text;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //retirar os espaços das string para comparação
        string contribuint = Textcontribuinte.Text;
        contribuint = contribuint.Replace(" ", String.Empty);
        string telefone = Texttelefone.Text;
        telefone = telefone.Replace(" ", String.Empty);
        string morad = Morada.Text;
        morad = morad.Replace(" ", String.Empty);
        string codi1 = cod1.Text;
        codi1 = codi1.Replace(" ", String.Empty);
        string codi2 = cod2.Text;
        codi2 = codi2.Replace(" ", String.Empty);
        string codi3 = cod3.Text;
        codi3 = codi3.Replace(" ", String.Empty);
        string local = Loca.Text;
        local = local.Replace(" ", String.Empty);

        string contribuinte2 = GridView1.SelectedRow.Cells[3].Text;
        contribuinte2 = contribuinte2.Replace(" ", String.Empty);
        string telefone2 = GridView1.SelectedRow.Cells[4].Text;
        telefone2 = telefone2.Replace(" ", String.Empty);
        string morad2 = GridView2.Rows[0].Cells[0].Text;
        morad2 = morad2.Replace(" ", String.Empty);
        string codi12 = GridView2.Rows[0].Cells[1].Text;
        codi12 = codi12.Replace(" ", String.Empty);
        string codi22 = GridView2.Rows[0].Cells[2].Text;
        codi22 = codi22.Replace(" ", String.Empty);
        string codi33 = GridView2.Rows[0].Cells[3].Text;
        codi33 = codi33.Replace(" ", String.Empty);
        string local2 = GridView2.Rows[0].Cells[4].Text;
        local2 = local2.Replace(" ", String.Empty);


        if (contribuint == contribuinte2 && telefone == telefone2 && morad == morad2 && codi1 == codi12 && codi2 == codi22 && codi3 == codi33 && local == local2)
        {
            Label2.ForeColor = System.Drawing.Color.Black;
            Label2.Text = "= Nenhuma alteração feita!";
            Mostrar.BindGrid(GridView1);
            Mostrar.BindGrid2(GridView2);
        }
        else
        {
            string nome = HttpContext.Current.User.Identity.Name.ToString();
            string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;

            int contribuinte;
            contribuinte = Validacoes.verifica_contribuinte2(Textcontribuinte.Text);

            if (contribuinte == 1)
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "✖ Esse numero contribuinte já esta registado!!! Alteração sem sucesso";
            }
            else
            {
                String command = "UPDATE Utilizadores SET [N_contribuinte]=@ncont, [Telefone]=@tel, [Morada]=@cont, [Codigo_postal1]=@tipo, [Codigo_postal2]=@tipo2, [Codigo_postal3]=@tipo4, [Localidade]=@tipo3 WHERE [Email_NomeUtil] = @status";
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.Parameters.AddWithValue("@ncont", Textcontribuinte.Text);
                cmd.Parameters.AddWithValue("@tel", Texttelefone.Text);
                cmd.Parameters.AddWithValue("@cont", Morada.Text);
                cmd.Parameters.AddWithValue("@tipo", cod1.Text);
                cmd.Parameters.AddWithValue("@tipo2", cod2.Text);
                cmd.Parameters.AddWithValue("@tipo4", cod3.Text);
                cmd.Parameters.AddWithValue("@tipo3", Loca.Text);
                cmd.Parameters.AddWithValue("@status", nome);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label2.ForeColor = System.Drawing.Color.Green;
                Label2.Text = "✔ Alteração com sucesso!";
                Mostrar.BindGrid(GridView1);
                Mostrar.BindGrid2(GridView2);
            }
        }

    }

    protected void voltar_Click(object sender, EventArgs e)
    {
        Label2.ForeColor = System.Drawing.Color.Black;
        Label2.Text = "";
        Panel1.Visible = false;
        Mostrar.BindGrid(GridView1);
        Mostrar.BindGrid2(GridView2);
    }
}