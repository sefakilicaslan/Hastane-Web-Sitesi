<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hastakayit.aspx.cs" Inherits="Hastane.hastakayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div style="margin-top: 40px; margin-bottom: 20px;">
        <table>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label1" runat="server" Text="Adı"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label2" runat="server" Text="Soyadı"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Soyadı alanı boş geçilemez" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label3" runat="server" Text="Yaş"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yaş alanı boş geçilemez" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="En az 1 en fazla 3 sayı girilmelidir" ControlToValidate="TextBox3" ValidationExpression="^\d{1,3}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label4" runat="server" Text="Adres"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label5" runat="server" Text="Kimlik No"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="11" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="TC Kimlik Numarası boş geçilemez" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="TC Kimlik Numarası 11 haneli olmalıdır" ControlToValidate="TextBox5" ValidationExpression="^\d{11}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label6" runat="server" Text="Hastalık"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label7" runat="server" Text="Bölüm"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label8" runat="server" Text="Kan Grubu"></asp:Label>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                    <asp:Label ID="Label9" runat="server" Text="Cinsiyet"></asp:Label>
                </td>
                <td class="space">
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" BackColor="#178066" ForeColor="White" Width="280px" Height="30px" Style="margin-bottom: 20px;" OnClientClick="return confirm('Hasta kayıt edilsin mi ?');" BorderStyle="None" />
</asp:Content>
