<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    
    // Validasi Input Login User
    private function _validLogin()
    {
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email', [
            'required' => 'Email Tidak Boleh Kosong!',
            'valid_email' => 'Email Tidak Valid!'
        ]);

        $this->form_validation->set_rules('password', 'Password', 'trim|required', [
            'required' => 'Password Tidak Boleh Kosong'
        ]);
    }

    // Halaman Login Aplikasi
    public function index()
    {
        $data['title'] = "Simulasi CAT | Login";
        $this->load->view('v_login/index', $data);
    }

    // Cek User Login
    public function cekUser()
    {
        // Cek Validasi Input Login User
        $this->_validLogin();

        $email = $this->input->post('email');
        $password = $this->input->post('password');

        // Jika Data Valid
        if ($this->form_validation->run()) {
            // Cek Email User yang terdapat didalam database
            $user = $this->M_user->cekUserByEmail($email)->row_array();
            // Jika User Ada
            if ($user) {
                // Jika user diaktivasi
                if ($user['is_active'] == 1) {
                    // Cek Password
                    $p = $this->encryption->decrypt($user['password']);
                    // Jika Password benar
                    if ($password == $p) {
                        $data = [
                            'id' => $user['id'],
                            'nama' => $user['nama'],
                            'email' => $user['email'],
                            'role_id' => $user['role_id']
                        ];
                        $this->session->set_userdata($data);
                        //Cek role_id apakah Admin atau Member
                        if ($user['role_id'] == 1) {
                            //Admin
                            $validasi = [
                                'success' => true,
                                'link' => base_url('dashboard')
                            ];
                            echo json_encode($validasi);
                        } else {
                            //Member
                            $validasi = [
                                'success' => true,
                                'link' => base_url('profil')
                            ];
                            echo json_encode($validasi);
                        }
                        
                    } else {
                        // Password Salah
                        $validasi = [
                            'error' => true,
                            'password_error' => 'Password Salah!'
                        ];
                        echo json_encode($validasi);
                    }
                    
                } else {
                    //User belum diaktivasi
                    $validasi = [
                        'error' => true,
                        'email_error' => 'Segera Aktifkan Email Anda!'
                    ];
                    echo json_encode($validasi);
                }
            } else {
                //User Tidak Ada
                $validasi = [
                    'error' => true,
                    'email_error' => 'Email Tidak Terdaftar!'
                ];
                echo json_encode($validasi);
            }
        } else {
            // Data Tidak Valid
            $validasi = [
                'error' => true,
                'email_error' => form_error('email'),
                'password_error' => form_error('password')
            ];
            echo json_encode($validasi);
        }
    }
}