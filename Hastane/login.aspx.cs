using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hastane
{
    public partial class login : System.Web.UI.Page
    {
        string internet = "Data Source=DESKTOP-JLADA8S;Initial Catalog=hastane;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doktor"] != null && Session["doktor"] != "") // oturum dolu ve boş kontrolü
                Response.Redirect("hasta.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

                Session.Add("kullanici", txt_kullaniciadi.Text);
                Session["sifre"] = txtSifre.Text;

                SqlConnection hastane = new SqlConnection(internet);
                hastane.Open();
                SqlCommand komut = new SqlCommand("select * from giris where Kullanici_adi=@Kullanici_adi and Sifre=@Sifre", hastane); // böyle bir ad ve şifre var mı
                komut.Parameters.AddWithValue("@Kullanici_adi", txt_kullaniciadi.Text.ToString());
                komut.Parameters.AddWithValue("@Sifre", txtSifre.Text.ToString());
                SqlDataReader oku = komut.ExecuteReader(); 
                if (oku.Read())
                {
                    Session["doktor"] = oku["Kullanici_adi"].ToString();
                    Session.Timeout = 60;
                    Response.Redirect("hasta.aspx");
                }
                else
                {
                    Label1.Text = "Kullanıcı adı veya şifre hatalı!!!";
                }
                oku.Close();
                hastane.Close();
        }
    }
}