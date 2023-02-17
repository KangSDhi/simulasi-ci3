<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('role_id') != "1") {
            redirect('accessdenied');
        }
    }

    // Halaman Dashboard
    public function index()
    {
        $data['title'] = "Simulasi CAT | Dashboard";
        $data['page'] = "dashboard";
        $data['nama'] = $this->session->userdata('nama');

        $this->load->view('v_dashboard/index', $data);
    }

    // Logout
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/');
    }
}