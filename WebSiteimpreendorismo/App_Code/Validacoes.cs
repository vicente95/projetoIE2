using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.Providers.Entities;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Validacoes
/// </summary>
public class Validacoes
{
    public static int pesquisa_email(TextBox numero)
    {
        //ver se uma determinada matricula já existe na base de dados
        int n = 0;
        string constring = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand("Select Email_NomeUtil from Utilizadores where Email_NomeUtil= @cont", con);
        cmd.Parameters.AddWithValue("@cont", numero.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows == true)
            {

                n = 1;
                break;
            }
        }
        con.Close();
        return n;
    }

    public static void Nif(object source, ServerValidateEventArgs args)
    {
        if (Validacoes.verifica_contribuinte(args.Value) != 0)
            args.IsValid = false;
        else
            args.IsValid = true;
    }

    public static int verifica_contribuinte(String nif)
    {
        int n = 0;
        string constring = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand("Select N_contribuinte from Utilizadores where N_contribuinte= @cont", con);
        cmd.Parameters.AddWithValue("@cont", nif);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows == true)
            {
                n = 1;
                break;
            }
        }
        con.Close();
        return n;


    }

    public static int verifica_contribuinte2(String nif)
    {
        int n = 0;
        string nome = HttpContext.Current.User.Identity.Name.ToString();
        string constring = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand("Select N_contribuinte from Utilizadores where N_contribuinte= @cont AND Email_NomeUtil != @pro", con);
        cmd.Parameters.AddWithValue("@cont", nif);
        cmd.Parameters.AddWithValue("@pro", nome);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows == true)
            {
                n = 1;
                break;
            }
        }
        con.Close();
        return n;


    }
}