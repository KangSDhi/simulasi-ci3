<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_admin/head'); ?>
<body class="hold-transition sidebar-mini layout-fixed">
    <!-- Site Wrapper -->
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
                        <h1>Settings Password Admin</h1>
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
                        <!-- Default Box -->
                        <div class="card card-outline card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Form Settings Password Admin</h3>
                            </div>
                            <form id="formSettingsPasswordAdmin">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="password">Password Lama</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i id="show-password" class="fas fa-eye"></i>
                                                </span>
                                            </div>
                                            <input type="password" id="password" name="password" class="form-control" placeholder="Password">
                                        </div>
                                        <small id="password_error" class="text-danger"></small>
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordBaru">Password Baru</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i id="show-newPassword" class="fas fa-eye"></i>
                                                </span>
                                            </div>
                                            <input type="password" id="newPassword" name="newPassword" class="form-control" placeholder="Password Baru">
                                        </div> 
                                        <small id="newPassword_error" class="text-danger"></small>
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordConfirm">Confirm Password Baru</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i id="show-confirmNewPassword" class="fas fa-eye"></i>
                                                </span>
                                            </div>
                                            <input type="password" id="confirmNewPassword" name="confirmNewPassword" class="form-control" placeholder="Confirm Password Baru">
                                        </div>
                                        <small id="confirmNewPassword_error" class="text-danger"></small>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="button" id="btn-updatePasswordAdmin" class="btn btn-primary">Submit</button>
                                </div>
                                <!-- /.card-footer -->
                            </form>
                        </div>
                        <!-- /.card -->
                    </div>
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
    <!-- /.wrapper -->

    <?php 
    // Script
    $this->load->view('layouts_admin/script');
    ?>

    <script>
        $(document).ready(function(){

            // Show password
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

            // Show new password
            $('#show-newPassword').on('click', function(){
                if ($(this).hasClass('fa-eye')) {
                    $('#newPassword').attr('type', 'text');
                    $(this).removeClass('fa-eye');
                    $(this).addClass('fa-eye-slash');
                } else {
                    $('#newPassword').attr('type', 'password');
                    $(this).removeClass('fa-eye-slash');
                    $(this).addClass('fa-eye');
                }
            });

            // Show confirm new password
            $('#show-confirmNewPassword').on('click', function(){
                if ($(this).hasClass('fa-eye')) {
                    $('#confirmNewPassword').attr('type', 'text');
                    $(this).removeClass('fa-eye');
                    $(this).addClass('fa-eye-slash');
                } else {
                    $('#confirmNewPassword').attr('type', 'password');
                    $(this).removeClass('fa-eye-slash');
                    $(this).addClass('fa-eye');
                }
            });

            // Submit
            $('#btn-updatePasswordAdmin').on('click', function(){
                const formPassword = $('#formSettingsPasswordAdmin');

                $.ajax({
                    url: "<?php echo base_url('settingspasswordadmin/update') ?>",
                    method: "POST",
                    data: formPassword.serialize(),
                    dataType: "JSON",
                    success: function(data){
                        // Data Error
                        if (data.error) {

                            if(data.password_error != '')
                            $('#password_error').html(data.password_error);
                            else 
                            $('#password_error').html('');

                            if(data.newPassword_error != '')
                            $('#newPassword_error').html(data.newPassword_error);
                            else 
                            $('#newPassword_error').html('');

                            if(data.confirmNewPassword_error != '')
                            $('#confirmNewPassword_error').html(data.confirmNewPassword_error);
                            else 
                            $('#confirmNewPassword_error').html('');
                        }

                        // Password Berhasil diupdate
                        if (data.success) {
                            formPassword.trigger('reset');
                            $('#password_error').html('');
                            $('#newPassword_error').html('');
                            $('#confirmNewPassword_error').html('');
                            toastr.success('Password admin berhasil diupdate.');
                            window.location.replace(data.link);
                        }
                    }
                });
            });
        });
    </script>
</body>
</html>