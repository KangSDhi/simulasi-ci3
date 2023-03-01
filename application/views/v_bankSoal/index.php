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
                                                <th>Aksi</th>
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
                                                <th>Aksi</th>
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

            // Save input data bank soal
            $('#btn-saveBankSoal').on('click', function(){
                const idKategoriSoal = $('#addBankSoal').attr('value');
                const form = $('#formInputBankSoal');

                $.ajax({
                    url: "<?php echo base_url('banksoal/add/') ?>" + idKategoriSoal,
                    method: "POST",
                    data: form.serialize(),
                    dataType: "JSON",
                    success: function(data){
                        // Data Error
                        if (data.error) {

                            if(data.pertanyaan_error != '')
                            $('#pertanyaan_error').html(data.pertanyaan_error);
                            else
                            $('#pertanyaan_error').html('');

                            if(data.pilihan_a_error != '')
                            $('#pilihan_a_error').html(data.pilihan_a_error);
                            else
                            $('#pilihan_a_error').html('');

                            if(data.pilihan_b_error != '')
                            $('#pilihan_b_error').html(data.pilihan_b_error);
                            else
                            $('#pilihan_b_error').html('');

                            if(data.pilihan_c_error != '')
                            $('#pilihan_c_error').html(data.pilihan_c_error);
                            else
                            $('#pilihan_c_error').html('');

                            if(data.pilihan_d_error != '')
                            $('#pilihan_d_error').html(data.pilihan_d_error);
                            else
                            $('#pilihan_d_error').html('');

                            if(data.pilihan_e_error != '')
                            $('#pilihan_e_error').html(data.pilihan_e_error);
                            else
                            $('#pilihan_e_error').html('');

                            if(data.nilai_a_error != '')
                            $('#nilai_a_error').html(data.nilai_a_error);
                            else
                            $('#nilai_a_error').html('');

                            if(data.nilai_b_error != '')
                            $('#nilai_b_error').html(data.nilai_b_error);
                            else
                            $('#nilai_b_error').html('');

                            if(data.nilai_c_error != '')
                            $('#nilai_c_error').html(data.nilai_c_error);
                            else
                            $('#nilai_c_error').html('');

                            if(data.nilai_d_error != '')
                            $('#nilai_d_error').html(data.nilai_d_error);
                            else
                            $('#nilai_d_error').html('');

                            if(data.nilai_e_error != '')
                            $('#nilai_e_error').html(data.nilai_e_error);
                            else
                            $('#nilai_e_error').html('');
                        }

                        // Data Bank Soal Berhasil Disimpan
                        if (data.success) {
                            form.trigger('reset');
                            $('#modalAdd').modal('hide');
                            // $('.textarea').next().find(".note-editable").text("");
                            $('.textarea').summernote('code', '');
                            $('#pertanyaan_error').html('');
                            $('#pilihan_a_error').html('');
                            $('#pilihan_b_error').html('');
                            $('#pilihan_c_error').html('');
                            $('#pilihan_d_error').html('');
                            $('#pilihan_e_error').html('');
                            $('#nilai_a_error').html('');
                            $('#nilai_b_error').html('');
                            $('#nilai_c_error').html('');
                            $('#nilai_d_error').html('');
                            $('#nilai_e_error').html('');
                            $('#example').DataTable().ajax.reload();
                            toastr.success('Data bank soal berhasil disimpan.');
                        }
                    }
                });
            });

            // Hapus data bank soal
            $('body').on('click', '.btn-delete', function(e){
                e.preventDefault();

                // Alamat Controller Delete Bank Soal
                const url = $(this).attr('href');

                Swal.fire({
                    title: 'Hapus Data',
                    text: "Anda Ingin Menghapus Data?",
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.value) {
                        $.ajax({
                            url: url,
                            method: "POST",
                            success: function(response){
                                $('#example').DataTable().ajax.reload();
                                toastr.error('Data bank soal berhasil dihapus.');
                            }
                        });
                    }
                });
            });

            // Tampil modal edit data bank soal
            $('body').on('click', '.btn-edit', function(e) {
                e.preventDefault();
                const idBankSoal = $(this).attr('value');

                $.ajax({
                    url: "<?php echo base_url('banksoal/ajaxUpdate/') ?>" + idBankSoal,
                    type: "GET",
                    dataType: "JSON",
                    success: function(data){
                        $('.textarea2').summernote('code', data.pertanyaan);
                        $('[name="idKategoriSoal"]').val(data.kategori_id);
                        $('[name="idBankSoal"]').val(data.id);
                        $('[name="pilihan_a2"]').val(data.pilihan_a);
                        $('[name="pilihan_b2"]').val(data.pilihan_b);
                        $('[name="pilihan_c2"]').val(data.pilihan_c);
                        $('[name="pilihan_d2"]').val(data.pilihan_d);
                        $('[name="pilihan_e2"]').val(data.pilihan_e);
                        $('[name="nilai_a2"]').val(data.nilai_a);
                        $('[name="nilai_b2"]').val(data.nilai_b);
                        $('[name="nilai_c2"]').val(data.nilai_c);
                        $('[name="nilai_d2"]').val(data.nilai_d);
                        $('[name="nilai_e2"]').val(data.nilai_e);
                        $('#modalEdit').modal('show');
                    }
                });
            });
            
            // Save update data bank soal
            $('#btn-updateBankSoal').on('click', function(e){
                const formEdit = $('#formEditBankSoal');

                $.ajax({
                    url: "<?php echo base_url('banksoal/update') ?>",
                    method: "POST",
                    data: formEdit.serialize(),
                    dataType: "JSON",
                    success: function(data){
                        // Data Error
                        if (data.error) {
                            if(data.pertanyaan2_error != '')
                            $('#pertanyaan2_error').html('data.pertanyaan2_error');
                            else 
                            $('#pertanyaan2_error').html('');

                            if(data.pilihan_a2_error != '')
                            $('#pilihan_a2_error').html('data.pilihan_a2_error');
                            else 
                            $('#pilihan_a2_error').html('');

                            if(data.pilihan_b2_error != '')
                            $('#pilihan_b2_error').html('data.pilihan_b2_error');
                            else 
                            $('#pilihan_b2_error').html('');

                            if(data.pilihan_c2_error != '')
                            $('#pilihan_c2_error').html('data.pilihan_c2_error');
                            else 
                            $('#pilihan_c2_error').html('');

                            if(data.pilihan_d2_error != '')
                            $('#pilihan_d2_error').html('data.pilihan_d2_error');
                            else 
                            $('#pilihan_d2_error').html('');

                            if(data.pilihan_e2_error != '')
                            $('#pilihan_e2_error').html('data.pilihan_e2_error');
                            else 
                            $('#pilihan_e2_error').html('');

                            if(data.nilai_a2_error != '')
                            $('#nilai_a2_error').html('data.nilai_a2_error');
                            else 
                            $('#nilai_a2_error').html('');

                            if(data.nilai_b2_error != '')
                            $('#nilai_b2_error').html('data.nilai_b2_error');
                            else 
                            $('#nilai_b2_error').html('');

                            if(data.nilai_c2_error != '')
                            $('#nilai_c2_error').html('data.nilai_c2_error');
                            else 
                            $('#nilai_c2_error').html('');

                            if(data.nilai_d2_error != '')
                            $('#nilai_d2_error').html('data.nilai_d2_error');
                            else 
                            $('#nilai_d2_error').html('');

                            if(data.nilai_e2_error != '')
                            $('#nilai_e2_error').html('data.nilai_e2_error');
                            else 
                            $('#nilai_e2_error').html('');
                        }

                        // Data Bank Soal Berhasil Disimpan
                        if (data.success) {
                            formEdit.trigger('reset');
                            $('#modalEdit').modal('hide');
                            $('.textarea').next().find(".note-editable").text("");
                            $('#pertanyaan2_error').html('');
                            $('#pilihan_a2_error').html('');
                            $('#pilihan_b2_error').html('');
                            $('#pilihan_c2_error').html('');
                            $('#pilihan_d2_error').html('');
                            $('#pilihan_e2_error').html('');
                            $('#nilai_a2_error').html('');
                            $('#nilai_b2_error').html('');
                            $('#nilai_c2_error').html('');
                            $('#nilai_d2_error').html('');
                            $('#nilai_e2_error').html('');
                            $('#example').DataTable().ajax.reload();
                            toastr.success('Data bank soal berhasil diupdate.');
                        }
                    }
                });
            });

            // Summer note
            $('.textarea').summernote({
                placeholder: 'Enter Pertanyaan Soal....',
                height: 200,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['fontname', ['fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['view', ['fullscreen', 'codeview', 'help']],
                ],
            });

            $('.textarea2').summernote({
                placeholder: 'Enter Pertanyaan Soal....',
                height: 200,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['fontname', ['fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['view', ['fullscreen', 'codeview', 'help']],
                ],
            });
        });
    </script>
</body>
</html>