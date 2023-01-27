<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	// Halaman Utama aplikasi atau Halaman Home
	public function index()
	{
		$data['title'] = "Simulasi CAT | Home";
		$this->load->view('v_home/index', $data);
	}
}
?>
