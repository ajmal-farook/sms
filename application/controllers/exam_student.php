<?php

class Student extends CI_Controller{
	
	public function index(){
		$this->load->view('templates/header');
		$this->load->view('school/exam_details');	
		$this->load->view('templates/footer');
		
	}
		