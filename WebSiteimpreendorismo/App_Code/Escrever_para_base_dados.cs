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

/// <summary>
/// Summary description for Escrever_para_base_dados
/// </summary>
public class Escrever_para_base_dados
{
    public static int Registar_produto_comprar(TextBox T_Nome, TextBox T_Tel, TextBox Email, TextBox T_Produto, DropDownList Lista, TextBox T_descricao)
    {
        int n = 0;
        //  Criar entrada para produto
        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;

        string command2 = "INSERT INTO [Clientes_formulario] ([Nome_pessoa], [Telefone], [Email], [Produto], [Tipo_produto], [Descricao], [Data]) VALUES (@id1, @id2, @id3, @id4, @id5, @id6, @id7)";
        SqlConnection co = new SqlConnection(connectionString);
        SqlCommand cmd2 = new SqlCommand(command2, co);
        cmd2.Parameters.AddWithValue("@id1", T_Nome.Text);
        cmd2.Parameters.AddWithValue("@id2", T_Tel.Text);
        cmd2.Parameters.AddWithValue("@id3", Email.Text);
        cmd2.Parameters.AddWithValue("@id4", T_Produto.Text);
        cmd2.Parameters.AddWithValue("@id5", Lista.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@id6", T_descricao.Text);
        cmd2.Parameters.AddWithValue("@id7", VerDataSemMilesegundos(DateTime.Now));

        try
        {
            co.Open();
            cmd2.ExecuteNonQuery();
            co.Close();
        }
        catch (Exception)
        {
            n = 1;
        }

            return n;
    }

    public static DateTime VerDataSemMilesegundos(DateTime d)
    {
        return new DateTime(d.Year, d.Month, d.Day, d.Hour, d.Minute, d.Second);
    }
}