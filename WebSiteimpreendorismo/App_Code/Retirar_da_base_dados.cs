using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.Configuration;

/// <summary>
/// Retirar valores de tabelas
/// </summary>
public class Retirar_da_base_dados
{
    public static int uti_telefone()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        int retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Telefone] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = (Int32)Cm.ExecuteScalar();
        conn.Close();
        return retorno;
    }

    public static string uti_morada()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        string retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Morada] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = Cm.ExecuteScalar().ToString();
        conn.Close();
        return retorno;
    }

    public static int uti_cod1()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        int retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Codigo_postal1] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = (Int32)Cm.ExecuteScalar();
        conn.Close();
        return retorno;
    }

    public static int uti_cod2()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        int retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Codigo_postal2] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = (Int32)Cm.ExecuteScalar();
        conn.Close();
        return retorno;
    }

    public static string uti_cod3()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        string retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Codigo_postal3] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = Cm.ExecuteScalar().ToString();
        conn.Close();
        return retorno;
    }

    public static string uti_localidade()
    {
        //retorna o id do utilizador para o admin que este quer apagar
        string retorno;
        string nome = HttpContext.Current.User.Identity.Name.ToString();

        string connectionString = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;


        String StrSel = "SELECT [Localidade] FROM [Utilizadores] WHERE [Email_NomeUtil] = @st";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cm = new SqlCommand(StrSel, conn);
        Cm.Parameters.AddWithValue("@st", nome);
        conn.Open();
        retorno = Cm.ExecuteScalar().ToString();
        conn.Close();
        return retorno;
    }
}