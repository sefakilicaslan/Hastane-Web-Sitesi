<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Hastane.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="contact_section layout_padding">
     <div >
      <div style="margin-top: 40px;" >
        <h2>
          BİZE ULAŞIN
        </h2>
      </div>
      <div class="row">
        <div >
          <div >
              <div >
                <div >
                  <div style="margin-top:20px;">
                      <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız ve Soyadınız" style="width: 200px; height: 50px;"  BackColor="#F8F9FA" BorderStyle="None"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"  placeholder="Telefon numaranız" MaxLength="10" style= "width: 200px; height: 50px; "  BackColor="#F8F9FA" BorderStyle="None" TextMode="Number"></asp:TextBox>
                      <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Telefon numaranız 11 haneli olmalıdır." ValidationExpression="^\d{11}$"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Telefon numarası alanı boş geçilemez" ControlToValidate="TextBox2" Display="Dynamic" ></asp:RequiredFieldValidator>
                  </div>
                </div>
                <div style="margin-top:10px";>
                </div>
                </div>
              </div>
              <div style="margin-top:10px";>
                  <asp:TextBox ID="TextBox3" runat="server" placeholder="Email" TextMode="Email" style="width: 400px; height: 50px;" BackColor="#F8F9FA" BorderStyle="None" Width="400"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mail alanı boş geçilemez" ControlToValidate="TextBox3" Display="Dynamic" ></asp:RequiredFieldValidator>
              </div>
              <div style="margin-top:10px";>
                  <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajınızı Yazınız" Style="width: 400px; height: 150px; vertical-align: middle;" TextMode="MultiLine"  BackColor="#F8F9FA" BorderStyle="None"></asp:TextBox>
              </div>
              <div style="margin-top:10px; margin-bottom:10px;">
                  <asp:Button ID="Button1" runat="server" Text="Gönder" BackColor="#178066" ForeColor="White" OnClick="Button1_Click1" BorderStyle="None" Height="50" Width="200" style="cursor:pointer"  />
              </div>
          </div>
        </div>
      </div>
  </div>
</asp:Content>
