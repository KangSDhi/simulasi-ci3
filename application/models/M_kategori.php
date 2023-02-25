<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Kategori extends CI_Model {

    public function cekKategoriById($id)
    {
        return $this->db->get_where('tbl_kategori_soal', array('id' => $id));
    }
}