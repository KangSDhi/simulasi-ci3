<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('role_id') != "2") {
            redirect('accessdenied');
        }
    }

    // Halaman Profil Member
    public function index()
    {
        //ID User
        $idUser = $this->session->userdata("id");

        $data["title"] = "Simulasi CAT | Profil";
        $data["user"] = $this->M_user->cekUserByEmail($this->session->userdata('email'))->row_array();
        $data["dataSimulasi"] = $this->M_simulasi->getSimulasiByUserId($idUser)->result();

        $this->load->view('v_profil/index', $data);
    }

    // Logout Member
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/');
    }
}