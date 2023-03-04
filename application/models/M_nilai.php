<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_nilai extends CI_Model {

    public function inputDataNilai($data)
    {
        $this->db->insert('tbl_nilai', $data);
    }

    public function getNilai($idSimulasi, $idKategori)
    {
        $this->db->select('*');
        $this->db->from('tbl_nilai');
        $this->db->where('simulasi_id', $idSimulasi);
        $this->db->where('kategori_id', $idKategori);
        return $this->db->get();
    }

    public function updateNilai($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('tbl_nilai', $data);
    }

}