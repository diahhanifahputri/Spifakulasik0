<?php 


class Register extends CI_Controller{

	function __construct(){
		parent::__construct();		
		$this->load->model('register_model');
		$this->load->helper('url');

	}

	function index(){
	$data['pelapors'] = $this->register_model->tampil_data()->result();
      $this->load->view('register',$data);
	}
	
	function register(){
		$namaP = $this->input->post('namaP');
		$emailP = $this->input->post('emailP');
		$noKtp = $this->input->post('noKtp');
		$passwordP = $this->input->post('passwordP');

		$data = array(
			'namaP' => $namaP,			
			'emailP' => $emailP,
			'noKtp' => $noKtp,
			'passwordP' => md5($passwordP)

			);
		$this->register_model->input_data($data,'pelapors');
		redirect('home');
	}

}