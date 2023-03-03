<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_simulasi extends CI_Model {


    public function getSimulasiByUserId($idUser)
    {
        $status = "Selesai";
        $this->db->select('id, user_id, waktu_mulai, status_simulasi');
        $this->db->from('tbl_simulasi');
        $this->db->where('user_id', $idUser);
        $this->db->where('status_simulasi', $status);
        $this->db->order_by('id', 'DESC');
        $this->db->limit(5);
        return $this->db->get();
    }
}