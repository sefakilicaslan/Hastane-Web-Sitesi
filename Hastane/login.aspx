<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Hastane.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Yönetici giriş</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/login_css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/login_css/main.css">
	<script>
        function mesaj() {
            alert('Şifre yenileme linki mailinize gönderildi!');
        }
    </script>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" >
					<img src="images/doktorlar.jpg" alt="IMG">
				</div>

				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Yönetici Girişi
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Lütfen kullanıcı adınızı giriniz">
						<asp:TextBox ID="txt_kullaniciadi" CssClass="input100"  runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Lütfen şifrenizi giriniz">
						<asp:TextBox ID="txtSifre" CssClass="input100" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">	
                        <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="login100-form-btn" OnClick="Button1_Click" />
					</div>

					<div class="text-center p-t-12">
						<a href="javascript:mesaj();" class="txt2">
							Şifre Unuttum
						</a>
					</div>
					<p>
						<asp:Label ID="Label1" runat="server" Text="" ForeColor="White" Font-Size="15" Style="margin-left: 20px;"></asp:Label></p>

				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
