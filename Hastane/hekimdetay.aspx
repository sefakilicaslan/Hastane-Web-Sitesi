<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hekimdetay.aspx.cs" Inherits="Hastane.hekimdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <% 
        string hekim = Request.QueryString["hekim"];
        if (hekim == "doktor1.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor1.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Mert Kaya</p>
            <p>Cinsiyet: Kadın</p>
            <p>Yaşı: 30</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: İstanbul Üniversitesi Cerrahpaşa Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Acil Servis</p>
            <p>Deneyim: 20 Yıl</p>
            <p>E-mail: mertkaya@gmail.com</p>
            <p>Akademik Ünvanı: Uzman Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor2.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor2.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Fatma Yılmaz</p>
            <p>Cinsiyet: Kadın</p>
            <p>Yaşı: 40</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Acıbadem Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Ağız ve Diş Sağlığı Servis</p>
            <p>Deneyim: 15 Yıl</p>
            <p>E-mail: fatmayılmaz@gmail.com</p>
            <p>Akademik Ünvanı: Doçent Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor3.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor3.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Ali Taş</p>
            <p>Cinsiyet: Erkek</p>
            <p>Yaşı: 20</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Nişantaşı Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Beslenme ve Diyet</p>
            <p>Deneyim: 5 Yıl</p>
            <p>E-mail: alitas@gmail.com</p>
            <p>Akademik Ünvanı: Asistan Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor4.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor4.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Sena Aydın</p>
            <p>Cinsiyet: Erkek</p>
            <p>Yaşı: 40</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Marmara Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Biyokimya</p>
            <p>Deneyim: 15 Yıl</p>
            <p>E-mail: senaaydın@gmail.com</p>
            <p>Akademik Ünvanı: Doçent Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor5.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor5.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Tan Mert</p>
            <p>Cinsiyet: Erkek</p>
            <p>Yaşı: 55</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Koç Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Çocuk Cerrahisi</p>
            <p>Deneyim: 35 Yıl</p>
            <p>E-mail:  tanmert@gmail.com</p>
            <p>Akademik Ünvanı: Profersör Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor6.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor6.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Aydın Yılmaz</p>
            <p>Cinsiyet: Erkek</p>
            <p>Yaşı: 60</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Aydın Adnan Menderes Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Genel Cerrahi</p>
            <p>Deneyim: 35 Yıl</p>
            <p>E-mail: aydınyılmaz@gmail.com</p>
            <p>Akademik Ünvanı: Profesör Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor7.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor7.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Asil toprak</p>
            <p>Cinsiyet: Kadın</p>
            <p>Yaşı: 10</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Koç Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Fizik Tedavi ve Rehabilitasyon</p>
            <p>Deneyim: 10 Yıl</p>
            <p>E-mail: asiltoprak@gmail.com</p>
            <p>Akademik Ünvanı: Uzman Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor8.jpg")
        {
    %>
    <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
        <div style="display: inline-block; vertical-align: top;">
            <img src="images/doktor8.jpg" style="width: 450px; height: 400px;" />
        </div>
        <div style="display: inline-block; margin-left: 20px;">
            <p>Adı Soyadı: Yiğit Mert</p>
            <p>Cinsiyet: Erkek</p>
            <p>Yaşı: 40</p>
            <p>Adres: İstanbul</p>
            <p>Mezun olduğu okul: Nişantaşı Üniversitesi Tıp Fakültesi</p>
            <p>Uzmanlık Alanı: Göğüs Hastalıkları</p>
            <p>Deneyim: 15 Yıl</p>
            <p>E-mail: yiğitmert@gmail.com</p>
            <p>Akademik Ünvanı: Doçent Doktor</p>
        </div>
    </div>

    <% }
        else if (hekim == "doktor9.jpg")
        {
    %>
        <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
    <div style="display: inline-block; vertical-align: top;">
        <img src="images/doktor9.jpg" style="width: 450px; height: 400px;" />
    </div>
    <div style="display: inline-block; margin-left: 20px;">
        <p>Adı Soyadı: Cansu Yiğit</p>
        <p>Cinsiyet: Kadın</p>
        <p>Yaşı: 35</p>
        <p>Adres: İstanbul</p>
        <p>Mezun olduğu okul: Ankara Tıp Fakültesi</p>
        <p>Uzmanlık Alanı: Dahiliye</p>
        <p>Deneyim: 10 Yıl</p>
        <p>E-mail: cansuyigit@gmail.com</p>
        <p>Akademik Ünvanı: Pratisyen Doktor</p>
    </div>
</div>

        <% }
        else if (hekim == "doktor10.jpg")
        {
    %>
           <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
    <div style="display: inline-block; vertical-align: top;">
        <img src="images/doktor10.jpg" style="width: 450px; height: 400px;" />
    </div>
    <div style="display: inline-block; margin-left: 20px;">
        <p>Adı Soyadı: Bora Mert</p>
        <p>Cinsiyet: Erkek</p>
        <p>Yaşı: 60</p>
        <p>Adres: İstanbul</p>
        <p>Mezun olduğu okul: Ankara Üniversitesi Tıp Fakültesi</p>
        <p>Uzmanlık Alanı: Cildiye</p>
        <p>Deneyim: 35 Yıl</p>
        <p>E-mail: boramert@gmail.com</p>
        <p>Akademik Ünvanı: Profesör Doktor</p>
    </div>
</div>

            <% }
        else if (hekim == "doktor11.jpg")
        {
    %>
               <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
    <div style="display: inline-block; vertical-align: top;">
        <img src="images/doktor11.jpg" style="width: 450px; height: 400px;" />
    </div>
    <div style="display: inline-block; margin-left: 20px;">
        <p>Adı Soyadı: Öykü Derin</p>
        <p>Cinsiyet: Kadın</p>
        <p>Yaşı: 40</p>
        <p>Adres: İstanbul</p>
        <p>Mezun olduğu okul: Nişantaşı Üniversitesi Tıp Fakültesi</p>
        <p>Uzmanlık Alanı: Göz Hastalıkları</p>
        <p>Deneyim: 10 Yıl</p>
        <p>E-mail: öyküderin@gmail.com</p>
        <p>Akademik Ünvanı: Uzman Doktor</p>
    </div>
</div>

                <% }
        else if (hekim == "doktor12.jpg")
        {
    %>
                  <div style="display: flex; align-items: center; margin-top: 60px; margin-bottom: 60px;">
    <div style="display: inline-block; vertical-align: top;">
        <img src="images/doktor12.jpg" style="width: 450px; height: 400px;" />
    </div>
    <div style="display: inline-block; margin-left: 20px;">
        <p>Adı Soyadı: Yusuf Demir </p>
        <p>Cinsiyet: Erkek</p>
        <p>Yaşı: 40</p>
        <p>Adres: İstanbul</p>
        <p>Mezun olduğu okul: Acıbadem Üniversitesi Tıp Fakültesi</p>
        <p>Uzmanlık Alanı: Kadın Hastalıkları ve Doğum </p>
        <p>Deneyim: 20 Yıl</p>
        <p>E-mail: yusufdemir@gmail.com</p>
        <p>Akademik Ünvanı: Profesör Doktor</p>
    </div>
</div>

    <% } %>
</asp:Content>
