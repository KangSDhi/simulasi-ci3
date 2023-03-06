<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_admin/head'); ?>
<body class="hold-transition layout-top-nav">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expanded-md navbar-dark">
            <div class="container">
                <a href="" class="navbar-brand">
                    <img src="<?php echo base_url();?>assets/adminlte3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">Simulasi</span>
                </a>
            </div>
        </nav>
        <!-- ./Navbar -->

        <!-- Content wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page Header) -->
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Aplikasi Simulasi CAT SKD CPNS</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item active">
                                    <?php echo $namaUser; ?>
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
            <!-- Main Content -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="clock" style="margin:2em;"></div>
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <?php foreach ($kategoriSoal as $kat): ?>
                                    <h5 class="card-title m-0"><?php echo $kat->nama_kategori." - ".$kat->singkatan; ?></h5>
                                    <?php endforeach ?>
                                </div>
                                <?php echo form_open('cat/simpanJawaban/'.$idSimulasi.'/'.$noSoal); ?>
                                <div class="card-body">
                                    <h5 class="card-title" style="margin-bottom: 20px;">No. <?php echo $noSoal;?></h5>

                                    <?php foreach($listSoal as $lst): ?>
                                    <p class="card-text">
                                        <?php echo $lst->pertanyaan; ?>
                                    </p>

                                    <?php
                                    $a = $lst->kategori_id.":A:".$lst->nilai_a;
                                    $b = $lst->kategori_id.":B:".$lst->nilai_b;
                                    $c = $lst->kategori_id.":C:".$lst->nilai_c;
                                    $d = $lst->kategori_id.":D:".$lst->nilai_d;
                                    $e = $lst->kategori_id.":E:".$lst->nilai_e;
                                    ?>

                                    <input type="hidden" name="idBankSoal" value="<?php echo $lst->id; ?>">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="pilihan" value="<?php echo $a;?>" <?php if($jawabanPeserta == 'A') echo "checked"; ?>>
                                        <label class="form-check-label">A. <?php echo $lst->pilihan_a; ?></label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="pilihan" value="<?php echo $b;?>" <?php if($jawabanPeserta == 'B') echo "checked"; ?>>
                                        <label class="form-check-label">B. <?php echo $lst->pilihan_b; ?></label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="pilihan" value="<?php echo $c;?>" <?php if($jawabanPeserta == 'C') echo "checked"; ?>>
                                        <label class="form-check-label">C. <?php echo $lst->pilihan_c; ?></label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="pilihan" value="<?php echo $d;?>" <?php if($jawabanPeserta == 'D') echo "checked"; ?>>
                                        <label class="form-check-label">D. <?php echo $lst->pilihan_d; ?></label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="pilihan" value="<?php echo $e;?>" <?php if($jawabanPeserta == 'E') echo "checked"; ?>>
                                        <label class="form-check-label">E. <?php echo $lst->pilihan_e; ?></label>
                                    </div>
                                    <?php endforeach ?>
                                </div>
                                <div class="card-footer">
                                    <!-- Simpan dan lanjutkan -->
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                    <?php
                                    // Lewati soal
                                    $next = $noSoal + 1;
                                    echo "<a href='".base_url('cat/index?tokenSimulasi='.urlencode($token).'&noSoal='.$next)."'><button type='button' class='btn btn-outline-secondary'>Lewati</button></a>";
                                    ?>
                                </div>
                                </form>
                            </div>
                            <!-- /.Pertanyaan Soal -->
                        </div>
                        <!-- /.col-md-8 -->

                        <div class="col-lg-4">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <!-- Selesai Ujian -->
                                    <div class="card-tools">
                                        <?php 
                                        echo "<a href='".base_url('cat/selesaiujian/'.$idSimulasi)."' id='btn-selesaiUjian' class='btn btn-outline-warning btn-xs'>Selesai Ujian</a>";
                                        ?>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <!-- Tombol Nomor Soal -->
                                        <?php
                                        $tombolNomor = explode(",", $listJawaban);
                                        $j = sizeof($tombolNomor);

                                        for ($i=1; $i <= $j ; $i++) { 
                                            $index = $i - 1;
                                            $jwb = explode(":", $tombolNomor[$index]);

                                            // Nomor Soal yang aktif
                                            if ($noSoal == $i) {
                                                echo "<div class=\"col-lg-2\">";
                                                echo "<a href='".base_url('cat/index?tokenSimulasi='.urlencode($token).'&noSoal='.$i)."'>";
                                                echo "<button type=\"button\" class=\"btn btn-block btn-success btn-xs\" style=\"margin-bottom:3px;\">".$i.".</button>";
                                                echo "</a>";
                                                echo "</div>";
                                            } elseif ($jwb[4] == "T") {
                                                // Sudah dijawab
                                                echo "<div class=\"col-lg-2\">";
                                                echo "<a href='".base_url('cat/index?tokenSimulasi='.urlencode($token).'&noSoal='.$i)."'>";
                                                echo "<button type=\"button\" class=\"btn btn-block btn-primary btn-xs\" style=\"margin-bottom:3px;\">".$i.".".$jwb[2]."</button>";
                                                echo "</a>";
                                                echo "</div>";
                                            } else {
                                                echo "<div class=\"col-lg-2\">";
                                                echo "<a href='".base_url('cat/index?tokenSimulasi='.urlencode($token).'&noSoal='.$i)."'>";
                                                echo "<button type=\"button\" class=\"btn btn-block btn-outline-primary btn-xs\" style=\"margin-bottom:3px;\">".$i.".</button>";
                                                echo "</a>";
                                                echo "</div>";
                                            }
                                        }
                                        ?>
                                    </div>
                                </div>
                                <!-- /.Nomor Soal -->
                            </div>
                        </div>
                        <!-- /.col-md-4 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
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
            <strong>
                Copyright &copy; <script>document.write(new Date().getFullYear());</script>
                <a href="">KangSDhi</a>.
            </strong>
            All rights reserved.
        </footer>
    </div>

    <?php $this->load->view('layouts_admin/script'); ?>

    <script>
        <?php
        date_default_timezone_set('Asia/Jakarta');
        $tgl = date('Y-m-d H:i:s');
        $awal = strtotime($tgl);
        $akhir = strtotime($waktuSelesaiUjian);
        $diff = $akhir - $awal;
        $done = base_url('cat/selesaiUjian'.$idSimulasi);
        ?>

        $(document).ready(function(){

            var clock;
            clock = $('.clock').FlipClock({
                clockFace: 'HourlyCounter',
                autoStart: false,
                callbacks: {
                    stop: function(){
                        Swal.fire({
                            icon: 'warning',
                            title: 'Oops...',
                            text: 'Waktu Ujian Sudah Berakhir!'
                        });
                        window.location.assign("<?php echo $done; ?>");
                    }
                }
            });

            clock.setTime(<?php echo $diff; ?>);
            clock.setCountdown(true);
            clock.start();

            // Selesai Ujian
            $('body').on('click', '#btn-selesaiUjian', function(e){
                e.preventDefault();

                // Alamat Controller CAT Method selesaiUjian()
                const url = $(this).attr('href');

                Swal.fire({
                    title: 'Selesai Ujian',
                    text: 'Anda ingin mengakhiri ujian simulasi CAT SKD CPNS ini?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes!'
                }).then((result) => {
                    if (result.value) {
                        window.location.href = url;
                    }
                });
            });
        });
    </script>
</body>
</html>