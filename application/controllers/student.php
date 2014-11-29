<?php

class Student extends CI_Controller{
	
	public function index(){
		$this->load->view('templates/header');
		$this->load->view('school/studentAddView');	
		$this->load->view('templates/footer');
		
	}
		
	//creating an array for inserting data to DB
	public function create(){
		$data = array(
			'first_name' => $this->input->post('Fname'),
			'last_name' => $this->input->post('Lname'),
			'father_name' => $this->input->post('father'),
			'mother_name' => $this->input->post('mother'),
			'phone' => $this->input->post('phone'),
			'mobile' => $this->input->post('mobile'),
			'email' => $this->input->post('email'),
			'dob' => $this->input->post('dob'),
			'gender' => $this->input->post('gender'),
			'class' => $this->input->post('class'),
			'division' => $this->input->post('division'),
			'roll_no' => $this->input->post('rollno'),
			'address' => $this->input->post('address'),
		);
		
		$upload = $this->do_upload();
		//$this->student_model->add_Student($data);
		//if(!isset($upload['error'])){
			$data['photo'] = $upload;
			$this->student_model->add_Student($data);
		//}
		
		$this->load->view('templates/header', $data);
		$this->load->view('school/studentAddView', $upload);	
		$this->load->view('templates/footer');
		//$this->index();
	}
	
	function do_upload()
		{
			$config['upload_path'] = './uploads/images';
			$config['allowed_types'] = 'gif|jpg|png|bmp';
			$config['max_size']	= '30000';
			$config['max_width']  = '2024';
			$config['max_height']  = '1768';

			$this->load->library('upload', $config);

			if (!$this->upload->do_upload())
			{
				$upload_data = array('upload_data' => $this->upload->data());
				return $upload_data['upload_data']['file_name'];
				$error = array('error' => $this->upload->display_errors());
				return $error;
				
			}
			else
			{
				$upload_data = array('upload_data' => $this->upload->data());
				return $upload_data['upload_data']['file_name'];
			}
		}	
	public function getotherstudentlist($id){
		$data['id'] = $id;
		$this->load->view('templates/header');
		$this->load->view('school/other_fee_list',$data);	
		$this->load->view('templates/footer');	
	}
	
	public function getOtherStudentListFee($other_id) {   //for adding fee details

			$result['id'] = $other_id;
			if(isset($_POST['payCheck'])){             //to redirect to this method no need of the below method
				$this->student_model->addToOtherFees($other_id);
			}
			if(isset($_POST['std']) && $_POST['std'] !='' && isset($_POST['division']) &&  $_POST['division'] != ''){
				$filter['std'] = isset($_POST['std'])?$_POST['std']:'';
				$filter['other_id'] = $other_id;
				$filter['division'] = isset($_POST['division'])?$_POST['division']:'';
				
				$result['fees_array'] = $this->student_model->getAmountOfOtherFee($other_id);
				
				$result['studentList'] = $this->student_model->getStudentsForOtherFees($filter);
				
				$result['filter'] = $filter;
			}else{
				$result['error'] = 'Please Select All details';
			}

			$this->load->view('templates/header');
			$this->load->view('school/other_fee_students_list',$result);
			$this->load->view('templates/footer');
	}
	
	public function deleteOtherFee($id){
			$this->student_model->deletingOtherFee($id);
			redirect('display/manageOtherFee1');
	}
	
	public function deleteStudentOtherFee($id ,$fee_id){ //for deleting the paid students inside other fee
			$this->student_model->deletingStudentOtherFee($id);
			redirect("student/getotherstudentlist/$fee_id");
	}
}
?>