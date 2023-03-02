<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SettingsPasswordAdmin extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('role_id') != "1") {
            redirect('accessdenied');
        }
    }

    // Validasi Input Settings Password Admin
    private function _validInputPassword()
    {
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]', [
            'required' => 'Password Lama Tidak Boleh Kosong!',
            'min_length' => 'Password Lama Minimal 8 Karakter!'
        ]);

        $this->form_validation->set_rules('newPassword', 'Password Baru', 'trim|required|min_length[8]', [
            'required' => 'Password Baru Tidak Boleh Kosong!',
            'min_length' => 'Password Baru Minimal 8 Karakter!'
        ]);

        $this->form_validation->set_rules('confirmNewPassword', 'Confirm New Password', 'trim|required|min_length[8]|matches[newPassword]', [
            'required' => 'Confirm Password Baru Tidak Boleh Kosong!',
            'min_length' => 'Confirm Password Baru Minimal 8 Karakter!',
            'matches' => 'Confirm Password Baru Tidak Sama Dengan Password Baru'
        ]);
    }

    // Halaman Settings Password Admin
    public function index()
    {
        $data['title'] = "Simulasi CAT | Settings Password";
        $data['page'] = "settigns_password";
        $data['nama'] = $this->session->userdata('nama');

        $this->load->view('v_settingsPasswordAdmin/index', $data);
    }

    // Update Password Admin
    public function update()
    {
        // Cek validasi Input Settings Password Admin
        $this->_validInputPassword();

        $idUser = $this->session->userdata('id');
        $password = $this->input->post('password');
        $newPassword = $this->input->post('newPassword');

        // Jika data valid
        if ($this->form_validation->run()) {
            // Cek Id admin yang terdapat didalam database
            $user = $this->M_user->cekUserById($idUser)->row_array();
            // Cek Password
            $p = $this->encryption->decrypt($user['password']);
            
            //Jika password benar
            if ($password == $p) {
                $data = [
                    'password' => $this->encryption->encrypt($newPassword)
                ];
                // print_r($data);
                // Update password admin
                $this->M_user->updateUserById($data, $idUser);
                $validasi = [
                    'success' => true,
                    'link' => base_url('dashboard')
                ];
                echo json_encode($validasi);
            } else {
                $validasi = [
                    'error' => true,
                    'password_error' => 'Password Lama Salah!',
                    'newPassword_error' => form_error('newPassword'),
                    'confirmNewPassword_error' => form_error('confirmNewPassword')
                ];
                echo json_encode($validasi);
            }
        } else {
            // Jika Tidak Valid
            $validasi = [
                'error' => true,
                'password_error' => form_error('password'),
                'newPassword_error' => form_error('newPassword'),
                'confirmNewPassword_error' => form_error('confirmNewPassword')
            ];
            echo json_encode($validasi);
        }       
    }
}