<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Hastane.Anasayfa" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row" style="margin-top: 40px;">
        <div class="col-md-6 ">
            <div class="img-box">
                <img src="images/doktorlar.jpg">
            </div>
        </div>
        <div class="col-md-6">
            <div class="detail-box">
                <div>
                    <h2 style="font-size: 40px; font-weight: 500;">Sağlıklı Hayat </h2>
                </div>
                <p>
                    Özel Plus Hastanesi 2020 yılında hizmet vermeye başlamış çok seçkin bir hastanedir. Teknolojik altyapımız sayesindde bütün 
          sağlık personelimiz ile sizlerin yanınızdayız.
                </p>
            </div>

        </div>

    </div>
    <div style="text-align: center; margin-top: 80px;">
        <h2 style="font-size: 40px; font-weight: 500;">Sağlık Rehberi Plus Hastanesi</h2>
        <p>
            Sağlık rehberimizdeki içeriklerde hekimlerimiz, hastanemiz hakkında detaylı bilgiler, iletişim bilgileri
             doktorlarımız hakkında bilgiler bulabilirsiniz tarhiçemize ulaşabilirsiniz. Dinamik ve takım çalışmasına dayanan sistemiyle, ileri teknoloji ve bilimle beslenen yeni fikirleriyle
             sağlıkta dünya standartlarını aşmak için kurgulanan Plus Hastanesi; multidisipliner çalışmayı da kendine ilke ediniyor. 
        </p>
    </div>
    <div style="display: flex; align-items: center; margin-top: 80px; margin-bottom: 40px;">
        <img src="images/estetik.png" />
        <p style="margin-left: 20px;">
            Yakında yeni açılacak Estetik Cerrahisi bölümü ile Uzman kadromuz ile hizmetinizdeyiz
            Son teknolojiye sahip ekipmanlarımızla güvenilir bir hizmet sunuyoruz.
        </p>
    </div>
    <div style="display: flex; align-items: center;">
        <p>Gece Polikliniklerimiz ile 7/24 hizmetinizdeyiz. Hangi gün hangi polikliniklerin ve doktorların nöbette olduğunu arayarak öğrenebilirsiniz Sağlıklı günler dileriz.
      Sizler iyi olun diye bizler her gün her saat çalışıyor ve sizleri sağlığınıza kavuşturmaya çalışıyoruz</p>
        <img src="images/hastane2.jpg" />
    </div>
    <div style="text-align: center; margin-bottom: 40px; margin-top: 80px;">
        <h2 style="margin-bottom:20px; ">Hastane Köşemiz</h2>
        <a href="haberler.aspx?tur=genel" style="margin-right: 100px; color:black; font-size: 20px;">Hastane Haberleri</a>
        <a href="haberler.aspx?tur=saglik" style="margin-right: 100px; color:black;  font-size: 20px;">Sağlık Etkinlikleri</a>
        <a href="haberler.aspx?tur" style="font-size: 20px; color:black;">İş ilanı haberleri</a>
    </div>
</asp:Content>
