<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_admin/head'); ?>
<body class="hold-transition sidebar-mini layout-fixed">
    <!-- Site wrapper -->
    <div class="wrapper">
    <?php 
    // Navbar
    $this->load->view('layouts_admin/navbar');

    // Sidebar
    $this->load->view('layouts_admin/sidebar');
    ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row-mb2">
                    <div class="col-sm-12">
                        <h1>500 Data Bank Soal Tidak Ditemukan</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- Main Content -->
        <section class="content">
            <div class="error-page">
                <h2 class="headline text-danger">500</h2>
                <div class="error-content">
                    <h3>
                        <i class="fas fa-exclamation-triangle text-danger"></i>
                        Oops! Kategori Soal Tidak Terdaftar.
                    </h3>
                    <p>
                        Data bank soal dengan Id Kategori Soal (<?php echo $url = $this->uri->segment(3); ?>) tidak terdaftar.
                    </p>
                </div>
            </div>
            <!-- /.error-page -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php 
    // Footer
    $this->load->view('layouts_admin/footer');
    ?>
    </div>
    <!-- ./wrapper -->

    <?php 
    // Script
    $this->load->view('layouts_admin/script');
    ?>
</body>
</html>