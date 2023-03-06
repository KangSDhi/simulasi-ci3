<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AccessDenied extends CI_Controller {

    // Halaman Access Denied
    public function index()
    {
        $data['title'] = "Simulasi CAT | Access Denied";
        $this->load->view('v_accessDenied/index', $data);
    }

    // Kembali Kehalaman Utama
    public function goHome()
    {
        $this->session->sess_destroy();
        redirect('/');
    } 
}