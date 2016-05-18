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
/// Summary description for Mostrar
/// </summary>
public class Mostrar
{
    public static void BindGrid(GridView ddl)
    {
        ddl.DataSource = null;
        ddl.DataBind();
        string nome = HttpContext.Current.User.Identity.Name.ToString();
        string constring = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constring))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT [Email_NomeUtil], [Nome], [N_contribuinte], [Telefone] FROM [Utilizadores] WHERE [Email_NomeUtil] = @status", con))
            {

                cmd.Parameters.AddWithValue("@status", nome);

                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        ddl.DataSource = dt;
                        ddl.DataBind();
                    }
                }
            }
        }
    }

    public static void BindGrid2(GridView ddl)
    {
        ddl.DataSource = null;
        ddl.DataBind();
        string nome = HttpContext.Current.User.Identity.Name.ToString();
        string constring = WebConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constring))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT [Morada], [Codigo_postal1], [Codigo_postal2] , [Codigo_postal3], [Localidade] FROM [Utilizadores] WHERE [Email_NomeUtil] = @status", con))
            {

                cmd.Parameters.AddWithValue("@status", nome);

                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        ddl.DataSource = dt;
                        ddl.DataBind();
                    }
                }
            }
        }
    }
}