<?php
class Login_model extends CI_Model{
	//cek nip dan password dosen
	function auth_bpbd($username,$password){
		$query=$this->db->query("SELECT * FROM bpbds WHERE emailB='$username' AND passwordB=MD5('$password') LIMIT 1");
		return $query;
	}

	//cek nim dan password mahasiswa
	function auth_dinas($username,$password){
		$query=$this->db->query("SELECT * FROM dinass WHERE emailD='$username' AND passwordD=MD5('$password') LIMIT 1");
		return $query;
	}
	//cek nim dan password mahasiswa
	function auth_pelapor($username,$password){
		$query=$this->db->query("SELECT * FROM pelapors WHERE emailP='$username' AND passwordP=MD5('$password') LIMIT 1");
		return $query;
	}

	function tampil_data(){
		return $this->db->get('laporans');
	}
 
	function input_data($data,$table){
		$this->db->insert($table,$data);
	}
}
