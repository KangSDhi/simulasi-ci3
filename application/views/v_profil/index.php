<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layouts_users/head'); ?>
<body>
    <!--===================== Header Menu Area =============================-->
    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <img src="<?php echo base_url();?>assets/bulkapp/img/logo.png" alt="">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo base_url('profil/logout') ?>">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--===================== Header Menu Area =============================-->

    <!--===================== Home Banner Area =============================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Profil Member</h2>
                </div>
            </div>
        </div>
    </section>
    <!--===================== End Home Banner Area =========================-->

    <!--===================== Profil Member Area ===========================-->
    <section class="blog_area single-post-area p_120">
        <div class="container">
            <div class="row">
                <!-- Profil Member -->
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget author_widget">
                            <img class="author_img" src="<?php echo base_url();?>assets/bulkapp/img/blog/author.png" alt="">
                            <h4><?php echo $user['nama']; ?></h4>
                            <p><?php echo $user['email']; ?></p>
                            <p><small class="text-muted">Bergabung Sejak <?php echo date('d F Y', $user['date_created']); ?></small></p>
                        </aside>
                        <aside class="single_sidebar_widget popular_post_widget">
                            <!-- Tombol Mulai Simulasi CAT -->
                            <a href="<?php echo base_url('cat/acakSoal'); ?>">
                                <button type="submit" class="main_btn col-lg">Mulai Simulasi CAT</button>
                                <div class="br"></div>
                            </a>
                        </aside>
                        <aside class="single_sidebar_widget post_category_widget">
                            <ul class="list cat-list">
                                <!-- Nilai Ambang Batas Seleksi Komptensi Dasar (SKD) -->
                                <?php 
                                $query = $this->db->get('tbl_kategori_soal')->result_array();
                                ?>
                                <?php foreach($query as $ambang): ?>
                                <li>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p><?php echo $ambang['nama_kategori']." - ".$ambang['singkatan'] ?></p>
                                        <p><?php echo $ambang['ambang_batas'] ?></p>
                                    </a>
                                </li>
                                <?php endforeach ?>
                            </ul>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="container">
                        <!-- Daftar Rimayat Nilai Ujian Simulasi CAT -->
                        <h3 class="mt-10 title_color">Daftar Riwayat Nilai Ujian Simulasi CAT</h3>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead class="table-head">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Pelaksanan Simulasi</th>
                                        <?php 
                                        $kategoriSoal = $this->db->get('tbl_kategori_soal')->result_array();
                                        foreach ($kategoriSoal as $kat) {
                                            echo "<th scope=\"col\">".$kat['singkatan']."</th>";
                                        }
                                        ?>
                                        <th scope="col">Total Nilai</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    // Data simulasi
                                    $no = 1;
                                    foreach ($dataSimulasi as $ds) {
                                        $idSimulasi = $ds->id;

                                        echo "<tr>";
                                        echo "<th scope=\"row\">".$no.".</th>";
                                        echo "<td>".$ds->waktu_mulai."</td>";

                                        // Data Nilai
                                        $this->db->select('*');
                                        $this->db->from('tbl_nilai');
                                        $this->db->where('simulasi_id', $idSimulasi);

                                        $dataNilai = $this->db->get()->result();
                                        $tot = 0;
                                        foreach($dataNilai as $dn){
                                            echo "<td>".$dn->nilai."</td>";
                                            $tot = $tot + $dn->nilai;
                                        }
                                        echo "<td>".$tot."</td>";
                                        echo "</tr>";

                                        $no++;
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--===================== End Profil Member Area =======================-->


    <?php $this->load->view('layouts_users/footer'); ?>
</body>
</html>