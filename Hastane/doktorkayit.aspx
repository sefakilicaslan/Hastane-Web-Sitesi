<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doktorkayit.aspx.cs" Inherits="Hastane.doktorkayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <style>
        .bosluk {
            padding-top:20px;
        }
    </style>

        <div>
            <table style="margin-top: 40px;" >
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
                    </td>
                    <td class="bosluk" >
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı adı boş geçilemez" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr >
                    <td class="bosluk">
                        <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
                    </td >
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre alanı boş geçilemez" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label3" runat="server" Text="Ad"></asp:Label>
                    </td>
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ad alanı boş geçilemez" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label4" runat="server" Text="Soyad"></asp:Label>
                    </td>
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label5" runat="server" Text="Mail"></asp:Label>
                    </td>
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label6" runat="server" Text="Telefon"></asp:Label>
                    </td>
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Telefon alanı boş geçilemez" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Telefon Numarası 11 haneli olmalıdır" ControlToValidate="TextBox6" ValidationExpression="^\d{11}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="bosluk">
                        <asp:Label ID="Label7" runat="server" Text="Bölüm"></asp:Label>
                    </td>
                    <td class="bosluk">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" BackColor="#178066" ForeColor="White" Width="295px" Height="30px" Style="margin-bottom: 40px; margin-top:20px;" OnClientClick="return confirm('Personel kayıt edilsin mi ?');" BorderStyle="None" />
</asp:Content>
