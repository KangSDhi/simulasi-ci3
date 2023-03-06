<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Cat extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        if ($this->session->userdata('role_id') != "2") {
            redirect('accessdenied');
        }
    }

    // Data Nilai Simulasi
    private function _dataNilai()
    {
        // Cek maksimal ID simulasi
        $max = $this->M_simulasi->getMaxId()->row_array();
        $idSimulasi = $max['id'];

        // Cek data kategori soal
        $kategoriSoal = $this->db->get('tbl_kategori_soal')->result();

        foreach ($kategoriSoal as $ks) {
            $row = array();
            $row[] = $ks->id;

            $dataKategori[] = $row;
        }

        // Id Katgori soal
        $x = json_encode($dataKategori);
        $x = str_replace("[", "", $x);
        $x = str_replace("]", "", $x);
        $x = str_replace(",", "", $x);
        $x = str_replace('"', "", $x);
        $jumlah = count($dataKategori);

        //input data nilai setiap kategori soal
        for ($i=0; $i < $jumlah ; $i++) { 
            $data = [
                'simulasi_id' => $idSimulasi,
                'kategori_id' => $x[$i],
                'nilai' => 0
            ];

            // Simpan Data Nilai Simulasi
            $this->M_nilai->inputDataNilai($data);
        }

    }

    // Update Data Nilai
    private function _updateNilai($idSimulasi, $before, $after)
    {
        /*
        | Contoh Format List Jawaban Peserta:
        | 201:1:X:0:F
        | [0] = 201 ----> Merupakan ID bank soal
        | [1] = 1 ------> Merupakan ID Kategori Soal
        | [2] = X ------> Marupakan pilihan jawaban peserta (A, B, C, D, E)
        | [3] = 0 ------> Merupakan nilai dari pilihan jawaban
        | [4] = F ------> Merupakan keterangan jawaban peserta (T/F) (Sudah/Belum Dijawab)
        */

        // List jawaban peserta di dalam database atau yang lama
        $x = explode(":", $before);
        $idKategori = $x[1];
        $nilaiOld = $x[3];

        // List jawaban peserta
        $y = explode(":", $after);
        $nilaiNew = $y[3];

        // Ambil data nilai
        $ambil = $this->M_nilai->getNilai($idSimulasi, $idKategori)->row_array();
        $idNilai = $ambil['id'];
        $nilai = $ambil['nilai'];

        // Perhitungan total nilai
        $totalNilai = $nilai + $nilaiNew - $nilaiOld;

        // Update nilai
        $data = [
            'nilai' => $totalNilai
        ];

        $this->M_nilai->updateNilai($data, $idNilai);
    }

    // Algoritma Acak Soal
    public function acakSoal()
    {
        // Cek data kategori soal
        $kategoriSoal = $this->db->get('tbl_kategori_soal')->result();

        // Ubah data kategori soal dengan format JSON
        $encodeKatgoriSoal = json_encode($kategoriSoal);

        // Ubah data kategori soal dengan format Array Asosiatif
        $decodeKatgoriSoal = json_decode($encodeKatgoriSoal, true);

        // Acak data bank soal berdasarkan ID Kategori soal
        for ($i=0; $i < count($kategoriSoal) ; $i++) { 
            $idKategoriSoal = $decodeKatgoriSoal[$i]['id'];
            $butirSoal = $decodeKatgoriSoal[$i]['butir_soal'];

            // Acak soal berdasarkan ID kategori soal beserta butir soalnya
            $acakSoal = $this->M_bank_soal->acakSoal($idKategoriSoal, $butirSoal)->result();

            // Menentukan list jawaban ujian peserta
            foreach ($acakSoal as $pertanyaan2) {
                $rows2 = array();
                $rows2[] = $pertanyaan2->id.":".$pertanyaan2->kategori_id;

                $data2[] = $rows2;
            }
        }

        // List jawaban peserta
        $list2 = json_encode($data2);
        $list2 = str_replace("[", "", $list2);
        $list2 = str_replace("]", "", $list2);
        $list2 = str_replace('"', "", $list2);
        $listJawaban = str_replace(",", ":X:0:F,", $list2);

        /*
        | Contoh Format List Jawaban Peserta:
        | 201:1:X:0:F
        | [0] = 201 ----> Merupakan ID bank soal
        | [1] = 1 ------> Merupakan ID Kategori Soal
        | [2] = X ------> Marupakan pilihan jawaban peserta (A, B, C, D, E)
        | [3] = 0 ------> Merupakan nilai dari pilihan jawaban
        | [4] = F ------> Merupakan keterangan jawaban peserta (T/F) (Sudah/Belum Dijawab)
        */

        $userId = $this->session->userdata('id');
        $waktuMulai = date('Y-m-d H:i:s');
        $waktuSelesai = date('Y-m-d H:i:s', time() + (60 * 90));
        $token = base64_encode(random_bytes(32));
        $status = "Belum";

        // Data Simulasi
        $data = [
            'user_id' => $userId,
            'list_jawaban' => $listJawaban.":X:0:F",
            'waktu_mulai' => $waktuMulai,
            'waktu_selesai' => $waktuSelesai,
            'token_simulasi' => $token,
            'status_simulasi' => $status
        ];

        // Simpan Data Simulasi
        $this->M_simulasi->addSimulasi($data);

        // Input data nilai simulasi
        $this->_dataNilai();

        // Menampilkan Halaman Simulasi CAT SKD
        redirect('cat/index?tokenSimulasi='.urlencode($token).'&noSoal=1');
    }

    // Halaman Simulasi CAT SKD
    public function index()
    {
        $tokenSimulasi = $this->input->get('tokenSimulasi');
        $noSoal = $this->input->get('noSoal');
        $indexJawaban = $noSoal - 1;

        // Cek Token Simulasi
        $cekToken = $this->M_simulasi->cekTokenSimulasi($tokenSimulasi)->row_array();
        
    
        // Jika token ada
        if ($cekToken) {
            $idSimulasi = $cekToken['id'];
            $listJawaban = $cekToken['list_jawaban'];
            $waktuSelesai = $cekToken['waktu_selesai'];
            $token = $cekToken['token_simulasi'];

            // Cek nomor soal
            $jawaban = explode(",", $listJawaban);
            $jumlahSoal = sizeof($jawaban);

            // Jika Melewati No Soal
            if ($noSoal<=0 OR $noSoal>$jumlahSoal) {
                redirect('cat/index?tokenSimulasi='.urlencode($tokenSimulasi).'&noSoal=1');
            }

            // Pertanyaan Peserta
            $pertanyaan = $jawaban[$indexJawaban];
            $pertanyaanPerseta = explode(":", $pertanyaan);
            $idBangSoal = $pertanyaanPerseta[0];
            $idKategoriSoal = $pertanyaanPerseta[1];
            $jawabanPeserta = $pertanyaanPerseta[2];

            // Menampilkan data halaman Ujian Simulasi CAT
            $data['title'] = "Simulasi CAT | Simulasi CAT SKD";
            $data['namaUser'] = $this->session->userdata('nama');
            $data['idSimulasi'] = $idSimulasi;
            $data['noSoal'] = $noSoal;
            $data['jawabanPeserta'] = $jawabanPeserta;
            $data['token'] = $token;
            $data['listJawaban'] = $listJawaban;
            $data['waktuSelesaiUjian'] = $waktuSelesai;
            $data['listSoal'] = $this->M_bank_soal->getBankSoalById($idBangSoal)->result();
            $data['kategoriSoal'] = $this->M_kategori->cekKategoriById($idKategoriSoal)->result();

            $this->load->view('v_cat/index', $data);
        } else {
            // Tidak ada token
            $data['title'] = "Simulasi CAT | Token Simulasi CAT Failed";

            $this->load->view('v_cat/tokenFailed', $data);
        }
    }

    // Update List Jawaban Peserta
    public function simpanJawaban($idSimulasi, $noSoal)
    {
        $idBankSoal = $this->input->post('idBankSoal');
        $pilihan = $this->input->post('pilihan');
        $indexJawaban = $noSoal - 1;
        $nextSoal = $noSoal + 1;

        // Cek jawaban peserta berdasarkan ID Simulasi
        $cekJawaban = $this->M_simulasi->getSimulasiById($idSimulasi)->row_array();
        $tokenSimulasi = $cekJawaban['token_simulasi'];
        $listJawaban = $cekJawaban['list_jawaban'];

        // Jika pilihan kosong atau tidak memilih
        if ($pilihan == "") {
            redirect('cat/index?tokenSimulasi='.urlencode($tokenSimulasi).'&noSoal='.$nextSoal);
        } else {
            // Pilihan Ada
            // List Jawaban
            $jawaban = explode(",", $listJawaban);
            $before = $jawaban[$indexJawaban];

            // Jawaban pilihan peserta dari simulasi
            $jawaban[$indexJawaban] = $idBankSoal.":".$pilihan.":T";
            $after = $idBankSoal.":".$pilihan.":T";

            // Update jawaban peserta
            $updateJawaban = implode(',', $jawaban);
            $data = [
                'list_jawaban' => $updateJawaban
            ];

            $this->M_simulasi->updateSimulasi($data, $idSimulasi);

            // Update data nilai jawaban peserta
            $this->_updateNilai($idSimulasi, $before, $after);

            //Menampilkan soal selanjutnya
            redirect('cat/index?tokenSimulasi='.urlencode($tokenSimulasi).'&noSoal='.$nextSoal);
        }
        
    }

    // Selesai Ujian Simulasi CAT
    public function selesaiUjian($idSimulasi)
    {
        // Update status ujian simulasi cat
        $data = [
            'status_simulasi' => 'Selesai'
        ];

        $this->M_simulasi->updateSimulasi($data, $idSimulasi);

        // Menampilkan halaman profil member
        redirect('profil');
    }

}