<!DOCTYPE html>
<html lang="en">

<?php $this->load->view('layouts_admin/head'); ?>

<body class="hold-transition layout-top-nav">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand-md navbar-dark">
            <div class="container">
                <a href="" class="navbar-brand">
                    <img src="<?php echo base_url();?>assets/adminlte3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">Simulasi</span>
                </a>
            </div>
        </nav>
        <!-- /.navbar -->

        <!-- Content wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Aplikasi Simulasi CAT SKD CPNS</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item active text-danger">
                                    Access Denied
                                </li>
                            </ol>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- -->
            <section class="content">
                <div class="error-page">
                    <h2 class="headline text-warning">503</h2>
                    <div class="error-content">
                        <h3>
                            <i class="fas fa-exclamation-triangle text-warning"></i>
                            Oops! Something went wrong.
                        </h3>
                        <a href="<?php echo base_url('accessdenied/gohome'); ?>">
                            <button type="button" class="btn btn-block btn-outline-wraning btn-lg">
                                <i class="fas fa-sign-out-alt"></i> Go Home!
                            </button>
                        </a>
                    </div>
                </div>
                <!-- /.error-page -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
                <b>Version</b> 1.0.0
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; <script>document.write(new Date().getFullYear());</script>
                <a href="">KangSDhi</a>.
            </strong>
            All fights reserved.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- SCRIPTS -->
    <?php $this->load->view('layouts_admin/script'); ?>
</body>
</html>