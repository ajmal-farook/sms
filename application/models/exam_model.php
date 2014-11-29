<?php

class Exam_model extends CI_Model{

	public function __construct(){
		$this->load->database();
	}
	public function addexam1($data){
	$this->db->insert('exam',$data); 
	}
		public function addexam() {
	$query = $this->db->get('exam');
		return $query->result_array();
	}
	
}
?>