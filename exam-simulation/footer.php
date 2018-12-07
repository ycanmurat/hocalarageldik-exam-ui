<footer>

	<div class="container mt-5">
		<div class="row">
			<div class="col-12"><img src="images/landing-footer-image.png" alt=""></div>
			<p class="copyright">eQuiz Sınav Sistemi - Hocalara Geldik Tüm Hakları Saklıdır. © 2020</p>
		</div>	
	</div>

</footer>

<!-- Modal -->
<div class="modal fade" id="user" tabindex="-1" role="dialog" aria-labelledby="userTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Giriş Yap | Kayıt Ol</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<!-- Giriş Yap-->
				<form action="" id="user-login">
					<h6>Giriş Yap</h6>
					<div class="item">
						<label for="">Kullanıcı Adı</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">Parola</label>
						<input type="password">
					</div>
					<button>Giriş Yap</button>
				</form>
				<!-- Kayıt Ol -->
				<form action="" id="user-register">
					<h6>Kayıt Ol</h6>
					<div class="item">
						<label for="">Adınız</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">Soyadınız</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">Kullanıcı Adı</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">E-posta Adresi</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">E-posta Onay</label>
						<input type="text">
					</div>
					<div class="item">
						<label for="">Parola</label>
						<input type="password">
					</div>
					<div class="item">
						<label for="">Parola Tekrar</label>
						<input type="password">
					</div>
					<label for="sign-checked"><a href="#" target="_blank"> Üyelik Sözleşmesini</a> Okudum, Onaylıyorum.</label>
					<input type="checkbox" id="sign-checked">
					<button>Gönder</button>
				</form>	
				<!-- Şifremi Unuttum -->
				<form action="" id="sendpassword">
					<h6>Şifremi Unuttum</h6>
					<div class="item">
						<label for="">E-posta Adresiniz</label>
						<input type="text">
					</div>
					<button>Gönder</button>
				</form>

				<div class="forgot-password">
					<button>Parolamı unuttum ?</button>
				</div>				
			</div>
			<div class="signup">
				<p>Sınav sistemini hemen kullanmaya başlamak için kayıt olun.</p>
				<button>Kayıt Ol</button>
			</div>

		</div>
	</div>
</div>

<script src="js\main.js"></script>
</body>
</html>

