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
        public static int pesquisa_contribuinte(TextBox numero)
        {
        //ver se uma determinada matricula já existe na base de dados
        int n = 0;
        string constring = ConfigurationManager.ConnectionStrings["ConnectionString_usr"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand("Select N_contribuinte from Utilizadores where N_contribuinte= @cont", con);
        cmd.Parameters.AddWithValue("@EmailId", numero.Text);
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