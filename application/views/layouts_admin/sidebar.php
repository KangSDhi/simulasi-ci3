<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="" class="brand-link">
		<img src="<?php echo base_url();?>assets/adminlte3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8;">
		<span class="brand-text font-weight-light">Simulasi</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="<?php echo base_url();?>assets/adminlte3/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block"><?php echo $nama; ?></a>
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				<!-- Dashboard -->
				<li class="nav-item">
					<a href="<?php echo base_url('dashboard') ?>" class="nav-link <?php if ($page == 'dashboard') echo "active"; ?>">
						<i class="nav-icon fas fa-tachometer-alt"></i>
						<p>Dashboard</p>
					</a>
				</li>

				<!-- Bank Soal -->
				<li class="nav-item has-treeview <?php if ($page == 'bank_soal') echo "menu-open"; ?>">
					<a href="#" class="nav-link <?php if ($page == 'bank_soal') echo "active"; ?>">
						<i class="nav-icon fas fa-question-circle"></i>
						<p>
							Data Bank Soal
							<i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<?php
						$kategoriSoal = $this->db->get('tbl_kategori_soal')->result_array();
					?>
					<!-- Side Menu Kategori Soal -->
					<?php foreach ($kategoriSoal as $menu) : ?>
					<?php
					$idKategoriSoal = $menu['id'];
					// Segment idKategoriSoal ---- 'banksoal/index'.$idKategoriSoal
					$url = $this->uri->segment(3);
					?>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="<?php echo base_url('banksoal/index/'.$idKategoriSoal);?>" class="nav-link <?php if ($idKategoriSoal == $url) echo "active" ?>">
								<i class="far fa-circle nav-icon"></i>
								<p><?php echo $menu['singkatan'] ?></p>
							</a>
						</li>
					</ul>
					<?php endforeach ?>
				</li>

				<!-- Data Members -->
				<li class="nav-item">
					<a href="<?php echo base_url('datamember');?>" class="nav-link <?php if ($page == 'data_members') echo "active"; ?>">
						<i class="nav-icon fas fa-user-check"></i>
						<p>Data Member</p>
					</a>
				</li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
