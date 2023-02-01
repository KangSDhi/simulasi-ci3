<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_users/head'); ?>
<body data-spy="scroll" data-target="#mainNav" data-offset="70">
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a href="<?php echo base_url('/'); ?>" class="navbar-brand logo_h">
						<img src="<?php echo base_url();?>assets/bulkapp/img/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
			</nav>
		</div>
	</header>

	<section class="latest_news_area p_120">
		<div class="container">
			<div class="main_title">
				<h2>Pendaftaran Simulasi CAT</h2>
				<p>Aplikasi Simulasi CAT (Computer Assisted Test) SKD (Seleksi Kompetensi Dasar) CPNS (Calon Pegawai Negeri Sipil)</p>
			</div>
			<div class="latest_news_inner_row">
				<div class="col-lg-6 mx-auto">
					<div class="l_news_item">
						<div class="container">
							<h4 class="text-center">Form Pendaftaran</h4>
							<hr>
							<form id="formPendaftaran">
								<div class="input-group-icon mt-10">
									<div class="icon">
										<i class="fa fa-user" aria-hidden="true"></i>
									</div>
									<input type="text" name="nama" placeholder="Nama Lengkap" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Lengkap'" class="single-input">
									<small id="nama_error" class="text-danger"></small>
								</div>
								<div class="input-group-icon mt-10">
									<div class="icon">
										<i class="fa fa-envelope" aria-hidden="true"></i>
									</div>
									<input type="text" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" class="single-input">
									<small id="email_error" class="text-danger"></small>
								</div>
								<div class="input-group-icon mt-10">
									<div class="icon">
										<i id="show-password" class="fa fa-eye" aria-hidden="true"></i>
									</div>
									<input type="password" name="password" id="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" class="single-input">
									<small id="password_error" class="text-danger"></small>
								</div>
								<div class="input-group-icon mt-10">
									<div class="icon">
										<i id="confirm-password" class="fa fa-eye" aria-hidden="true"></i>
									</div>
									<input type="password" name="confirmPassword" id="password2" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'" class="single-input">
									<small id="confirmPassword" class="text-danger"></small>
								</div>
								<div class="mt-10 text-danger">
									<button type="button" id="btn-pendaftaran" class="main_btn2 mt-10 col-lg">Daftar</button>
								</div>
								<hr>
								<div class="mt-10 text-center">
									<a href="<?php echo base_url('login')?>">Sudah Punya Akun? Silahkan Login!</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<?php $this->load->view('layouts_users/footer') ?>

	<script>
		$(document).ready(function(){

			$('#show-password').on('click', function(){
				if ($(this).hasClass('fa-eye')) {
					$('#password').attr('type', 'text');
					$(this).removeClass('fa-eye');
					$(this).addClass('fa-eye-slash');
				} else {
					$('#password').attr('type', 'password');
					$(this).removeClass('fa-eye-slash');
					$(this).addClass('fa-eye');
				}
			});
		});
	</script>
</body>
</html>
