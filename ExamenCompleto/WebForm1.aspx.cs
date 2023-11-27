using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenCompleto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // Establecer la cadena de conexión
        string connectionString = "Data Source=DESKTOP-F1AKN4R\\SQLEXPRESS01;Initial Catalog=DBexamen;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                CargarDatos();
            }
        }

        // Método para buscar registros
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Implementar lógica de búsqueda
                    string query = "SELECT * FROM TuTabla"; // Reemplaza "TuTabla" con el nombre real de tu tabla
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);

                           
                            gvResultados.DataSource = dt;
                            gvResultados.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
               
                Console.WriteLine("Error al buscar registros: " + ex.Message);
            }
        }

        // Método para cargar datos
        private void CargarDatos()
        {
          
        }

        // Método para agregar registros
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Implementar lógica de inserción
                    string insertQuery = "INSERT INTO TuTabla (Nombre, Equipo, Tecnico, Usuario) VALUES (@Nombre, @Equipo, @Tecnico, @Usuario)";
                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        
                        cmd.Parameters.AddWithValue("@Nombre", txtAgregarNombre.Text);
                        cmd.Parameters.AddWithValue("@Equipo", txtAgregarEquipo.Text);
                        cmd.Parameters.AddWithValue("@Tecnico", txtAgregarTecnico.Text);
                        cmd.Parameters.AddWithValue("@Usuario", txtAgregarUsuario.Text);

                        
                        cmd.ExecuteNonQuery();

                        
                        txtAgregarNombre.Text = "";
                        txtAgregarEquipo.Text = "";
                        txtAgregarTecnico.Text = "";
                        txtAgregarUsuario.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                
                Console.WriteLine("Error al agregar registro: " + ex.Message);
            }
        }

        protected void txtAgregarNombre_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void txtAgregarEquipo_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtAgregarTecnico_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtAgregarUsuario_TextChanged(object sender, EventArgs e)
        {
       
        }

        protected void gvResultados_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}