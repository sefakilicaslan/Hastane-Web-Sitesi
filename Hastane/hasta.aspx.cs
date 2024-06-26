using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Hastane
{
    public partial class hasta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["doktor"] != null)
                {
                    Label1.Text = "Hoş geldiniz, " + Session["doktor"].ToString();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        void Personel()
        {
            string connectionString = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            string query = "SELECT UserId, Ad, Soyad, Mail, Telefon, Bölüm FROM giris";

            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataAdapter veri = new SqlDataAdapter(command);
                    veri.Fill(dt);
                }
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        void Hasta()
        {
            string connectionString = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            string query = "SELECT Adı, Soyadı, Yas, Adres, KimlikNo, Hastalık, Bölüm, KanGrubu, Cinsiyet FROM giris_hasta";
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dt);
                }
            }
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e) // PERSONEL LİSTESİ
        {
            string connectionString = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            string query = "SELECT UserId, Ad, Soyad, Mail, Telefon, Bölüm FROM giris";

            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(dt);

            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Visible = !GridView1.Visible; // tersine çevirmesi için 
            GridView2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("hastakayit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) // HASTA LİSTESİ
        {
            string connectionString = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            // SQL sorgusunu oluşturun
            string query = "SELECT Adı, Soyadı, Yas, Adres, KimlikNo, Hastalık, Bölüm, KanGrubu, Cinsiyet FROM giris_hasta";
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(dt);

            }
            GridView2.DataSource = dt;
            GridView2.DataBind();
            GridView2.Visible = !GridView2.Visible;
            GridView1.Visible = false;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) //PERSONEL SİLME
        {
            string grid = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            int rowId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string query = "DELETE FROM giris WHERE UserId = @UserId";

            using (SqlConnection connection = new SqlConnection(grid))
            {
                connection.Open();

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@UserId", rowId);
                command.ExecuteNonQuery();

            }
            Personel();
            GridView1.DataBind();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e) //HASTA SİLME
        {
            string grid = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

            // kimliknosuna göre silme işlemi yaptım datakeys ile silinecek satırın kimliğini aldım
            string kimlikNo = GridView2.DataKeys[e.RowIndex].Values["KimlikNo"].ToString();

            string query = "DELETE FROM giris_hasta WHERE KimlikNo = @KimlikNo";

            using (SqlConnection connection = new SqlConnection(grid))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@KimlikNo", kimlikNo);

                command.ExecuteNonQuery();

            }
            Hasta();
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("doktorkayit.aspx");
        }
    }
}