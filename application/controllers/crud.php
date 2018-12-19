<?php 


class Crud extends CI_Controller{

	function __construct(){
		parent::__construct();		
		$this->load->model('m_laporan');
		$this->load->helper('url');

	}

	function index(){
	$data['laporans'] = $this->m_laporan->tampil_data()->result();
	
      $this->load->view('pelapor',$data);
  
	}
	public function dinas()
	{
		$data['laporans'] = $this->m_laporan->tampil_data()->result();
	
      $this->load->view('dinas',$data);
	}
	public function badanpdb()
	{
		$data['laporans'] = $this->m_laporan->tampil_data()->result();
	
      $this->load->view('bpdb',$data);
	}

	function lihatlaporan(){
	$data['laporans'] = $this->m_laporan->tampil_data()->result();
	
      $this->load->view('pelapor',$data);
   
	}
	function buatlaporan(){
	
      $this->load->view('buat_laporan');
   
	}
	function prioritas(){
	
      $this->load->view('prioritas');
   
	}
	function inputdinas(){
	
      $this->load->view('inputdinas');
   
	}
	function hapus($id){
		$where = array('id' => $id);
		$this->m_laporan->hapus_data($where,'laporans');
		redirect('crud');
	}
	function edit($id){
		$where = array('id' => $id);
		$data['laporans'] = $this->m_laporan->edit_data($where,'laporans')->result();
		$this->load->view('edit_laporan',$data);
   
	}
	function tambah(){
		$namaLaporan = $this->input->post('namaLaporan');
		$jenisInfra = $this->input->post('jenisInfra');
		$penyebabB = $this->input->post('penyebabB');
		$kerusakan = $this->input->post('kerusakan');
		$keterbatasan = $this->input->post('keterbatasan');

		$data = array(
			'namaLaporan' => $namaLaporan,
			'jenisInfra' => $jenisInfra,
			'penyebabB' => $penyebabB,
			'kerusakan' => $kerusakan,
			'keterbatasan' => $keterbatasan
			);
		$this->m_laporan->input_data($data,'laporans');
		redirect('crud');
	}
	function update(){
		$id = $this->input->post('id');
		$namaLaporan = $this->input->post('namaLaporan');
		$jenisInfra = $this->input->post('jenisInfra');
		$penyebabB = $this->input->post('penyebabB');
		$kerusakan = $this->input->post('kerusakan');
		$keterbatasan = $this->input->post('keterbatasan');

		$data = array(
			'id' => $id,
			'namaLaporan' => $namaLaporan,
			'jenisInfra' => $jenisInfra,
			'penyebabB' => $penyebabB,
			'kerusakan' => $kerusakan,
			'keterbatasan' => $keterbatasan
			);

	$where = array(
		'id' => $id
	);

	$this->m_laporan->update_data($where,$data,'laporans');
	redirect('crud');
}


}