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
        if (Textnome.Text == GridView1.SelectedRow.Cells[2].Text && Textemail.Text == GridView1.SelectedRow.Cells[1].Text && Textcontribuinte.Text == GridView1.SelectedRow.Cells[3].Text && Texttelefone.Text == GridView1.SelectedRow.Cells[4].Text && Morada.Text == GridView2.Rows[0].Cells[0].Text && cod1.Text == GridView2.Rows[0].Cells[1].Text && cod2.Text == GridView2.Rows[0].Cells[2].Text && cod3.Text == GridView2.Rows[0].Cells[3].Text && Loca.Text == GridView2.Rows[0].Cells[4].Text)
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
            contribuinte = Validacoes.verifica_contribuinte(Textcontribuinte.Text);

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