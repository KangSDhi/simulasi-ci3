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
                        <div class="col-sm-12">
                            <h1><?php echo $kategoriSoal['nama_kategori'].' - '.$kategoriSoal['singkatan']; ?></h1>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <!-- Modal Add Bank Soal -->
                            <?php include 'add.php';?>

                            <!-- Default Box -->
                            <div class="card card-outline card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Tabel Data Bank Soal <?php echo $kategoriSoal['nama_kategori'].' - '.$kategoriSoal['singkatan']; ?></h3>

                                    <div class="card-tools">
                                        <a data-toggle="tooltip" data-placement="top" title="Add">
                                            <button id="addBankSoal" type="button" class="btn btn-outline-primary btn-sm" value="<?php echo $kategoriSoal['id']; ?>" type="button" data-toggle="modal" data-target="#modalAdd">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <div class="card-body table-responsive">
                                    <table id="example" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Pertanyaan</th>
                                                <th>Pilihan A</th>
                                                <th>Pilihan B</th>
                                                <th>Pilihan C</th>
                                                <th>Pilihan D</th>
                                                <th>Pilihan E</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                        <tfoot>
                                            <tr>
                                                <th>No.</th>
                                                <th>Pertanyaan</th>
                                                <th>Pilihan A</th>
                                                <th>Pilihan B</th>
                                                <th>Pilihan C</th>
                                                <th>Pilihan D</th>
                                                <th>Pilihan E</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.content -->

            <!-- Modal Edit Bank Soal -->
            <?php include 'edit.php';?>
        </div>
        <!-- /.content-wrapper -->
        <?php 
        // Footer
        $this->load->view('layouts_admin/footer')
        ?>
    </div>
    <!-- ./wrapper -->

    <?php
    // Script
    $this->load->view('layouts_admin/script');
    ?>

    <script>
        <?php 
        $id = $kategoriSoal['id'];
        $link = site_url('banksoal/ajaxGetBankSoal/'.$id);
        ?>

        $(document).ready(function(){
            // Menampilkan data bank soal (dataTable server-side) berdasarkan Id Kategori soal
            $('#example').DataTable({
                "processing": true, // Feature control the processing indicator.
                "serverSide": true, // Feature control Datatables server-side processing mode
                "order": [], // Initial no order.
                // Load data for the tables content from an Ajax source
                "ajax": {
                    "url": "<?php echo $link; ?>",
                    "type": "POST"
                },
                // Set column definition initialisation properties
                "columnDefs": [
                    {
                        "targets": [0], // first column / numbering column
                        "orderable": false, //false not orderable
                    }
                ]
            });

            
        });
    </script>
</body>
</html>