<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="haberler.aspx.cs" Inherits="Hastane.haberler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <% 
        string tur = Request.QueryString["tur"];
        if (tur == "genel")
        {
    %>
    <h2 style="margin-top: 30px;">Hastane Haberleri</h2>
    <ul>
        <li>
            <h3 style="margin-top: 30px;">Hastanemize Yeni Bir Bölüm Açılacak!</h3>
            <p>Hastanemizde Sağlık Bakanlığımız ile uzun bir süredir yürütelen çalışmanın ardından Aile Hekimliği bölümümüz çok yakında hizmetinizde olmaya başlıyacaktır.</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Hastanemizde Sağlık Kontrolleri Ücretsiz Olacak!</h3>
            <p>Hastanemiz, toplum sağlığını desteklemek amacıyla ücretsiz sağlık kontrolleri sunmaya başlıyor. Detaylı bilgi almak ve randevu almak için iletişişm sayfamız üzerinden bizlere aklınızdaki soruları sorabilirsiniz. Özel plus hastanesi olarak sağlıklı günler dileriz.</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Hastanemizde Eğitim Seminerleri Başlıyor!</h3>
            <p>Hastanemiz, İstanbul Nişantaşı Üniversitesi ile anlaşmaya vardı ve bu anlaşma sonucunda Tıp Fakültesi öğrencileri sağlıklı yaşam ve hastalıklardan korunma konularında eğitim seminerleri alacaklar. Aldıkları eğitim sonuçlarına göre hastanemizde staj ve iş imkanına sahip olabilecekler.</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Yeni Tedavi Yöntemi Geliştirildi</h3>
            <p>Hastanemiz doktorları kansere bir çare bulabilmek için büyük bir özveri ile çalışmalar yürüttü. Yürüttüğü çalışmaları hastane yönetimi olarak inceledik ve test ettik. Kanser için yeni bir ilacın daha piyasaya sürüleceği ve bu ilacın kanserin yayılmasını çok yavaşlatacağı sonucuna vardık. </p>
        </li>
    </ul>

    <% }
        else if (tur == "saglik")
        {
    %>
    <h2 style="margin-top: 30px;">Sağlık Etkinlikleri</h2>
    <ul>
        <li>
            <h3 style="margin-top: 30px;">Yoga ve Meditasyon Etkinliği</h3>
            <p>Hastanemizde düzenlenen yoga ve meditasyon etkinliğine katılın. Zihninizi ve bedeninizi rahatlatın, stresi azaltın. Bütün vatandaşlarımız davetlidir</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Doğal Beslenme Semineri</h3>
            <p>Doğal beslenmenin önemini öğrenmek ve sağlıklı yeme alışkanlıkları kazanmak için seminerimize katılın. Uzmanlarımızdan bilgi alın. Hastanemizde çalışan Ali Taş hocamız sizlere çok önemli bilgiler verecek</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Egzersiz ve Sağlık Konferansı</h3>
            <p>Sağlıklı yaşam ve düzenli egzersizin önemini keşfetmek için konferansımıza katılın. Uzmanlarımızdan egzersiz ipuçları alın.</p>
        </li>
        <li>
            <h3 style="margin-top: 30px;">Sağlık Sempozyumu 2024</h3>
            <p>Bu yıl hastanemizin önderliğinde yapılan Sağlık Sempozyumu kıymetli doktorlarımız ve hemşirelerimiz ile bizlere acil vakalarında ne tür davranılması gerektiği öğretildi.</p>
        </li>
    </ul>

    <% }
        else
        {
    %>
    <h2 style="margin-top: 30px;">İş İlanı Haberleri</h2>
    <ul>
        <li style="margin-top: 30px;">
            <strong>Hemşire</strong>
            <p>Hastanemizde açılan Baş Hemşire pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Erkek Hemşire pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Kadın Hemşire pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
        </li>
        <li style="margin-top: 30px;">
            <strong>Laboratuvar</strong>
            <p>Hastanemizde açılan Erkek Laborant pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Kadın Laborant pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
        </li>
        <li style="margin-top: 30px;">
            <strong>Doktor</strong>
            <p>Hastanemizde açılan Kadın Göz Doktoru pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Erkek Diş Hekimi Doktoru pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Kadın Cildiye Doktoru pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
            <p>Hastanemizde açılan Erkek Göz Doktoru pozisyonu için başvurular başlamıştır. Başvuru şartları ve detaylar için hastanemize CV'lerinizi mail olarak göndermeniz gerekmektedir.</p>
        </li>
    </ul>

    <% } %>
</asp:Content>
