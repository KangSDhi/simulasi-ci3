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
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Data Member Aktif</h1>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- Main Content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <!-- Default Box -->
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Tabel Data Member Aktif</h3>
                        </div>
                        <div class="card-body table-responsive">
                            <table id="example" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Bergabung Sejak</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php 
    //Footer
    $this->load->view('layouts_admin/footer');
    ?>
    </div>
    <!-- ./wrapper -->
    <?php
    // Script
    $this->load->view('layouts_admin/script');
    ?>

    <script>
        $(document).ready(function(){

            //DataTable
            $('#example').DataTable({
                "processing": true, //Feature control the processing indicator.
                "serverSide": true, // Feature control DataTables server-side processing mode.
                "order": [], // Initial no order.
                // Load data for the tables content from an Ajax source
                "ajax": {
                    "url": "<?php echo site_url('datamember/ajaxGetMembers'); ?>",
                    "type": "POST"
                },
                // Set column definition initialization properties.
                "columnDefs": [
                    {
                        "targets": [0], //first column / numbering column
                        "orderable": false //set not orderable
                    },
                ],
            });
        });
    </script>
</body>
</html>