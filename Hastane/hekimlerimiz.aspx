<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hekimlerimiz.aspx.cs" Inherits="Hastane.hekimlerimiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style>
        .link{
            text-decoration: none;
            color: inherit;
            display: inline-block;
        }
        .resim {
            width:450px;
            height: 350px;
        }
    </style>
    <div style="display: grid; grid-template-columns: repeat(2, 1fr); justify-content: center; margin-top: 60px; margin-bottom: 60px; gap:20px;">
        <div style="text-align: center;">
            <a  href="hekimdetay.aspx?hekim=doktor.jpg" class="link" >
                <img src="images/doktor.jpg" class="resim" />
            </a>
            <p>Acil Servis</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor.jpg"  class="link">
                <img src="images/doktor.jpg" class="resim" />
            </a>
            <p>Ağız ve Diş Sağlığı</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor3.jpg" class="link">
                <img src="images/doktor3.jpg" class="resim" />
            </a>
            <p>Beslenme ve Diyet</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor4.jpg" class="link">
                <img src="images/doktor4.jpg" class="resim" />
            </a>
            <p>Biyokimya</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor5.jpg" class="link">
                <img src="images/doktor5.jpg" class="resim" />
            </a>
            <p>Çocuk Cerrahisi</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor6.jpg" class="link">
                <img src="images/doktor6.jpg" class="resim" />
            </a>
            <p>Genel Cerrahi</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor7.jpg" class="link">
                <img src="images/doktor7.jpg" class="resim" />
            </a>
            <p>Fizik Tedavi</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor8.jpg" class="link">
                <img src="images/doktor8.jpg" class="resim" />
            </a>
            <p>Göğüs Hastalıkları</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor9.jpg" class="link">
                <img src="images/doktor9.jpg" class="resim" />
            </a>
            <p>İç Hastalıkları(Dahiliye)</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor10.jpg" class="link">

                <img src="images/doktor10.jpg" class="resim" />
            </a>
            <p>Cildiye</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor11.jpg" class="link">
                <img src="images/doktor11.jpg" class="resim" />
            </a>
            <p>Göz Hastalıkları</p>
        </div>

        <div style="text-align: center;">
            <a href="hekimdetay.aspx?hekim=doktor12.jpg" class="link">
                <img src="images/doktor12.jpg" class="resim" />
            </a>
            <p>Kadın Hastalıkları ve Doğum</p>
        </div>

    </div>





</asp:Content>
