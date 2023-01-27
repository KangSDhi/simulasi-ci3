<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_users/head') ?>
<body data-spy="scroll" data-target="#mainNav" data-offset="70">
	<!-- Header Menu Area -->
    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a href="<?php echo base_url('/')?>" class="navbar-brand logo_h">
                        <img src="<?php echo base_url();?>assets/bulkapp/img/logo.png" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active">
                                <a href="#home" class="nav-link">Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="#feature" class="nav-link">FEATURES</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?php echo base_url('login');?>" class="nav-link">LOGIN</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- Header Menu Area -->

    <!-- Home Banner Area -->
    <section class="home_banner_area" id="home">
        <div class="banner_inner">
            <div class="container">
                <div class="row banner_content">
                    <div class="col-lg-9">
						<h2>SIMULASI CAT <br>SKD CPNS</h2>
						<p>
							Aplikasi Simulasi CAT (Computer Assisted Test) SKD (Seleksi Kompetensi Dasar) CPNS (Calon Pegawai Negeri Sipil)
						</p>
						<a href="<?php echo base_url('pendaftaran'); ?>" class="banner_btn">Daftar Sekarang</a>
                    </div>
					<div class="col-lg-3">
						<div class="banner_map_img">
							<img src="<?php echo base_url();?>assets/bulkapp/img/banner/right-mobile.png" class="img-fluid" alt="">
						</div>
					</div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Home Banner Area -->

	<!-- Feature Area -->
	<section class="feature_area p_120" id="feature">
		<div class="container">
			<div class="main_title">
				<h2>Fitur Aplikasi</h2>
			</div>
			<div class="feature_inner row">
				<div class="col-lg-4 col-md-6">
					<div class="feature_item">
						<img src="<?php echo base_url();?>assets/bulkapp/img/icon/f-icon-1.png" alt="">
						<h4>Pedaftaran Via Email</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature_item">
						<img src="<?php echo base_url();?>assets/bulkapp/img/icon/f-icon-1.png" alt="">
						<h4>Simulasi CAT SKD</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature_item">
						<img src="<?php echo base_url();?>assets/bulkapp/img/icon/f-icon-1.png" alt="">
						<h4>Riwayat Nilai Ujian</h4>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Feature Area -->

	<?php $this->load->view('layouts_users/footer'); ?>
</body>
</html>
