using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hastane
{
    public partial class doktorkayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectionString = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    connection.Open();

                    string ekle = "INSERT INTO giris (Kullanici_adi, Sifre, Ad, Soyad, Mail, Telefon, Bölüm) " +
                       "VALUES (@Kullanici_adi, @Sifre, @Ad, @Soyad, @Mail, @Telefon, @Bölüm)";

                    using (SqlCommand command = new SqlCommand(ekle, connection))
                    {
                        command.Parameters.AddWithValue("@Kullanici_adi", TextBox1.Text);
                        command.Parameters.AddWithValue("@Sifre", TextBox2.Text);
                        command.Parameters.AddWithValue("@Ad", TextBox3.Text);
                        command.Parameters.AddWithValue("@Soyad", TextBox4.Text);
                        command.Parameters.AddWithValue("@Mail", TextBox5.Text);
                        command.Parameters.AddWithValue("@Telefon", TextBox6.Text);
                        command.Parameters.AddWithValue("@Bölüm", TextBox7.Text);

                        command.ExecuteNonQuery();
                    }
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                }
                Response.Write("<script lang='Javascript'> alert('Personel bilgileri başarıyla eklendi.'); </script>");
                
            }
        }
    }
}