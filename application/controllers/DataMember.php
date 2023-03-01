<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataMember extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('role_id') != "1") {
            redirect('accessdenied');
        }
    }

    // Halaman Data Member Aktif
    public function index()
    {
        $data['title'] = "Simulasi CAT | Data Member";
        $data['page'] = "data_members";
        $data['nama'] = $this->session->userdata('nama');

        $this->load->view('v_dataMember/index', $data);
    }

    // Server Side Data Member Aktive
    public function ajaxGetMembers()
    {
        $list = $this->M_user->getMembers();
        $data = array();
        $no = $_POST['start'];

        foreach ($list as $members) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $members->nama;
            $row[] = $members->email;
            $row[] = date('d F Y', $members->date_created);
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->M_user->count_all(),
            "recordsFiltered" => $this->M_user->count_filtered(),
            "data" => $data,
        );

        // output to json format
        echo json_encode($output);
    }
}