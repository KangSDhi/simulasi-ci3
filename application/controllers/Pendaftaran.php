<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		date_default_timezone_set('Asia/Jakarta');
	}

	// Validasi Input Pendaftaran
	private function _validInputPendaftaran()
	{
		$this->form_validation->set_rules('nama', 'Nama', 'trim|required', [
			'required' => 'Nama Lengkap Tidak Boleh Kosong!'
		]);

		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[tbl_user.email]', [
			'required' => 'Email Tidak Boleh Kosong!',
			'valid_email' => 'Email Tidak Valid!',
			'is_unique' => 'Email Sudah Terdaftar!'
		]);

		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]', [
			'required' => 'Password Tidak Boleh Kosong!',
			'min_length' => 'Password Minimal 8 Karakter!'
		]);

		$this->form_validation->set_rules('confirmPassword', 'Confirm Password', 'trim|required|min_length[8]|matches[password]', [
			'required' => 'Confirm Password Tidak Boleh Kosong!',
			'min_length' => 'Confirm Password Minimal 8 Karakter!',
			'matches' => 'Confirm Password Tidak Sama Dengan Password!'
		]);
	}

	// Halaman Pendaftaran Aplikasi
	public function index()
	{
		$data['title'] = "Simulasi CAT || Pendaftaran";
		$this->load->view('v_pendaftaran/index', $data);
	}

	// Proses Pendaftaran
	public function Daftar()
	{
		// Cek Validasi Input Pendaftaran
		$this->_validInputPendaftaran();

		$nama = htmlspecialchars($this->input->post('nama'));
		$email = htmlspecialchars($this->input->post('email'));
		$password = $this->input->post('password');

		// Jika Data Valid
		if ($this->form_validation->run()) {
			$data = [
				'role_id' => 2,
				'nama' => $nama,
				'email' => $email,
				'password' => $this->encryption->encrypt($password),
				'is_active' => 1,
				'date_created' => time()	
			];
			$this->M_user->addUser($data);
			$validasi = [
				'success' => true,
				'link' => base_url('login')
			];
			echo json_encode($validasi);
		} else {
			$validasi = [
				'error' => true,
				'nama_error' => form_error('nama'),
				'email_error' => form_error('email'),
				'password_error' => form_error('password'),
				'confirmPassword_error' => form_error('confirmPassword')
			];
			echo json_encode($validasi);
		}
	}

}
