<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-dark">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item">
			<a href="#" class="nav-link" data-widget="pushmenu">
				<i class="fas fa-bars"></i>
			</a>
		</li>
	</ul>

	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- Notifications Dropdown Menu -->
		<li class="nav-item">
			<a href="<?php echo base_url('settingspasswordadmin'); ?>" class="nav-link" data-toggle="tooltip" title="Settings">
				<i class="fas fa-cogs"></i>
				<?php if ($page == 'settings_password') :  ?>
					<span class="badge badge-primary navbar-badge">.</span>
				<?php endif ?>
			</a>
		</li>
		<li class="nav-item">
			<a href="<?php echo base_url('dashboard/logout');?>" class="nav-link" data-toggle="tooltip" title="Logout">
				<i class="fas fa-sign-out-alt"></i>
			</a>
		</li>
	</ul>
</nav>
