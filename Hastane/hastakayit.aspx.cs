using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hastane
{
    public partial class hastakayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem("A Rh+", "A Rh+"));
                DropDownList1.Items.Add(new ListItem("A Rh-", "A Rh-"));
                DropDownList1.Items.Add(new ListItem("B Rh+", "B Rh+"));
                DropDownList1.Items.Add(new ListItem("B Rh-", "B Rh-"));
                DropDownList1.Items.Add(new ListItem("AB Rh+", "AB Rh+"));
                DropDownList1.Items.Add(new ListItem("AB Rh-", "AB Rh-"));
                DropDownList1.Items.Add(new ListItem("0 Rh+", "0 Rh+"));
                DropDownList1.Items.Add(new ListItem("0 Rh-", "0 Rh-"));

                DropDownList2.Items.Add(new ListItem("Kadın"));
                DropDownList2.Items.Add(new ListItem("Erkek"));
            }
        }
        string connect = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                using (SqlConnection connection = new SqlConnection(connect))
                {

                    connection.Open();

                    string sorgu = "SELECT COUNT(*) FROM giris_hasta WHERE KimlikNo = @KimlikNo";
                    SqlCommand checkCommand = new SqlCommand(sorgu, connection);
                    checkCommand.Parameters.AddWithValue("@KimlikNo", TextBox5.Text);
                    int kimlik = (int)checkCommand.ExecuteScalar();

                    if (kimlik == 0) 
                    {
                        string ekle = "INSERT INTO giris_hasta (Adı, Soyadı, Yas, Adres, KimlikNo, Hastalık, Bölüm, KanGrubu, Cinsiyet) " +
                            "VALUES (@Adı, @Soyadı, @Yas, @Adres, @KimlikNo, @Hastalık, @Bölüm, @KanGrubu, @Cinsiyet)";

                        using (SqlCommand command = new SqlCommand(ekle, connection))
                        {
                            command.Parameters.AddWithValue("@Adı", TextBox1.Text);
                            command.Parameters.AddWithValue("@Soyadı", TextBox2.Text);
                            command.Parameters.AddWithValue("@Yas", TextBox3.Text);
                            command.Parameters.AddWithValue("@Adres", TextBox4.Text);
                            command.Parameters.AddWithValue("@KimlikNo", TextBox5.Text);
                            command.Parameters.AddWithValue("@Hastalık", TextBox6.Text);
                            command.Parameters.AddWithValue("@Bölüm", TextBox7.Text);
                            command.Parameters.AddWithValue("@KanGrubu", DropDownList1.SelectedValue);
                            command.Parameters.AddWithValue("@Cinsiyet", DropDownList2.SelectedValue);

                            command.ExecuteNonQuery();
                        }
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        DropDownList1.SelectedIndex = 0;
                        DropDownList2.SelectedIndex = 0;
                    
                    Response.Write("<script lang='Javascript'> alert('Hasta bilgileri başarıyla eklendi'); </script>");
                    }
                    else
                    {
                        Response.Write("<script lang='Javascript'> alert('Bu kimlik numarasına sahip bir hasta zaten mevcut'); </script>");
                    }
                }
                 

            }

        }
    }
}