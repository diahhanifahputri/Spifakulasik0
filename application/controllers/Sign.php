<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sign extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('login_model');
	}

	public function index()
	{
		$this->load->view('signin');
	}

	function auth(){
        $username=htmlspecialchars($this->input->post('username',TRUE),ENT_QUOTES);
        $password=htmlspecialchars($this->input->post('password',TRUE),ENT_QUOTES);

        
        $cek_bpbd=$this->login_model->auth_bpbd($username,$password);
        $cek_dinas=$this->login_model->auth_dinas($username,$password);
        $cek_pelapor=$this->login_model->auth_pelapor($username,$password);

        if($cek_bpbd->num_rows() > 0){ //jika login sebagai tim
						$data=$cek_bpbd->row_array();
        		$this->session->set_userdata('masuk',TRUE);
		         //Akses admin
		            $this->session->set_userdata('akses','1');
		            $this->session->set_userdata('ses_id',$data['emailB']);
		            $this->session->set_userdata('ses_nama',$data['namaBpbd']);
		           redirect('crud/badanpdb');

		        }


        elseif($cek_dinas->num_rows() > 0){ //jika login sebagai tim
        	

						$data=$cek_dinas->row_array();
        		$this->session->set_userdata('masuk',TRUE);
		         //Akses admin
		            $this->session->set_userdata('akses','1');
		            $this->session->set_userdata('ses_id',$data['emailD']);
		            $this->session->set_userdata('ses_nama',$data['namaD']);
		          redirect('crud/dinas');
		        }


				
		elseif($cek_pelapor->num_rows() > 0){
							$data=$cek_pelapor->row_array();
        			$this->session->set_userdata('masuk',TRUE);
							$this->session->set_userdata('akses','3');
							$this->session->set_userdata('ses_id',$data['emailP']);
							redirect('crud');
					
        }
        else{
        		echo "Data tidak ditemukan";
        }

    }

    function logout(){
        $this->session->sess_destroy();
        $url=base_url('');
        redirect($url);
    }
}