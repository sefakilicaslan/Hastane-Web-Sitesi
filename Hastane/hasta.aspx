<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hasta.aspx.cs" Inherits="Hastane.hasta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <div style="text-align: center;">
            <h2 style="font-size: 30px;">Yönetici Paneli</h2>
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="20"></asp:Label>
        </div>
        <div style="text-align: center;">
            <asp:Button ID="Button1" runat="server"  Text="Personel Listesi" BackColor="#178066" ForeColor="White" BorderColor="White"  Height="60px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Hasta Listesi" BackColor="#178066" ForeColor="White" BorderColor="White" Height="60px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Hasta Kayıt" BackColor="#178066" ForeColor="White" BorderColor="White" Height="60px" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Personel Kayıt" BackColor="#178066" ForeColor="White" BorderColor="White" Height="60px" OnClick="Button4_Click" />
            <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="UserId" style="margin-bottom: 20px; margin-top: 20px;">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" DataKeyNames="KimlikNo" OnRowDeleting="GridView2_RowDeleting" style="margin-bottom: 20px; margin-top: 20px;">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
    </body>
    </html>

</asp:Content>
