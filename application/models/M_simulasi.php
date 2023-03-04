<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_simulasi extends CI_Model {

    public function addSimulasi($data)
    {
        $this->db->insert('tbl_simulasi', $data);
    }

    public function cekTokenSimulasi($token)
    {
        return $this->db->get_where('tbl_simulasi', array('token_simulasi' => $token));
    }

    public function getSimulasiById($id)
    {
        return $this->db->get_where('tbl_simulasi', array('id' => $id));
    }

    public function updateSimulasi($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('tbl_simulasi', $data);
    }

    public function getMaxId()
    {
        $this->db->select_max('id');
        return $this->db->get('tbl_simulasi');
    }


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