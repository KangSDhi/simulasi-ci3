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
									<small id="confirmPassword_error" class="text-danger"></small>
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

			// Show Password
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

			// Show Confirm Password
			$('#confirm-password').on('click', function(){
				if ($(this).hasClass('fa-eye')) {
					$('#password2').attr('type', 'text');
					$(this).removeClass('fa-eye');
					$(this).addClass('fa-eye-slash');
				} else {
					$('#password2').attr('type', 'password');
					$(this).removeClass('fa-eye-slash');
					$(this).addClass('fa-eye');
				}	
			});

			//Submit password admin
			$('#btn-pendaftaran').on('click', function(){
				const formPendaftaran = $('#formPendaftaran');

				$.ajax({
					url: "<?php echo base_url('pendaftaran/daftar') ?>",
					method: "POST",
					data: formPendaftaran.serialize(),
					dataType: "JSON",
					success: function(data){
						console.log(data);
						//Data Error
						if(data.error){
							if(data.nama_error != '')
							$('#nama_error').html(data.nama_error);
							else $('#nama_error').html('');

							if(data.email_error != '')
							$('#email_error').html(data.email_error);
							else $('#email_error').html('');

							if(data.password_error != '')
							$('#password_error').html(data.password_error);
							else $('#password_error').html('');

							if(data.confirmPassword_error != '')
							$('#confirmPassword_error').html(data.confirmPassword_error);
							else $('#confirmPassword_error').html('');

							Swal.fire({
								icon: 'warning',
								title: 'Oops...',
								text: 'Periksa Kembali Data Anda!'
							});
						}

						//Pendaftaran Sukses
						if (data.success) {
							formPendaftaran.trigger('reset');
							$('#nama_error').html('');
							$('#email_error').html('');
							$('#password_error').html('');
							$('#confirmPassword_error').html('');

							Swal.fire({
								icon: 'success',
								title: 'Pendaftaran Berhasil Dilakukan',
								text: 'Silahkan Login!'
							});

							window.location.replace(data.link);
						}
					}
				});
			});
		});
	</script>
</body>
</html>
