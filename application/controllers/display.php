<?php	
	class Display extends CI_Controller{
	
		public function __construct(){
		
			parent::__construct();
			$this->load->model('student_model');
		}
		
		public function index($num = 0){
			$data['query'] = $this->student_model->getStudent(); //call function at model
			
			//pagination
			$config = array();
			$config["base_url"] = base_url() . "index.php/display/search/";
			//$config['total_rows'] = $this->db->count_all_results('addstudent');
			$config['total_rows'] = $this->student_model->total();
			$config["per_page"] = 5;
			$config["uri_segment"] = 3;
			$config['cur_tag_open'] = '<li><a><b>';
			$config['cur_tag_close'] = '</b></a></li>';
			$config['next_tag_open'] = '<li>';
			$config['next_tag_close'] = '</li>';
			$config['num_tag_open'] = '<li>';
			$config['num_tag_close'] = '</li>';
			$config['last_tag_open'] = '<li>';
			$config['last_tag_close'] = '</li>';
			$config['first_tag_open'] = '<li>';
			$config['first_tag_close'] = '</li>';
			$config['prev_tag_open'] = '<li>';
			$config['prev_tag_close'] = '</li>';
			
			
			$this->pagination->initialize($config);
			//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
			$data["query"] = $this->student_model->paginating($config["per_page"],$num);
			$data["links"] = $this->pagination->create_links();
				
			$this->load->view('templates/header');
			$this->load->view('school/index',$data);
			$this->load->view('templates/footer');
		}

		
		public function delete($id){           //deleting a row
			//$this->load->model('student_model');
			$this->student_model->deleting($id);
			redirect('display');
		}
		
		public function details($id){                //for displaying all the details of a student
			//$this->load->model('student_model');
			$data['id'] = $id;
			$data['student_details'] = $this->student_model->detailed($id);//for display student details
			$class = $data['student_details'][0]['class']; //for getting class field
			$data['student_fee'] = $this->student_model->getFeeOfAClass($class);
			$data['student_fee_details'] = $this->student_model->student_fee_details($id);

			$data['selected_year'] = isset($_POST['year'])? $_POST['year'] : date('Y');
			$data['list'] = $this->student_model->paidStatus($id, $data['selected_year']);
			$data['Other_fee_list'] = $this->student_model->otherFeedetailed($id);
			
			$this->load->view('templates/header');
			$this->load->view('school/details',$data);
			$this->load->view('templates/footer');
		}
		
		public function edit($id)              //for editting
		{
			$data['query'] = $this->student_model->editing($id);
			$this->load->view('templates/header');
			$this->load->view('school/edit_view', $data);
			$this->load->view('templates/footer');
		}
		
		public function updating($id){
			$upload = $this->do_upload();              //for updating the row
			$this->student_model->updating($id,$upload);
			$this->load->view('school/edit_view');
   			redirect('display/index');
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
		/*public function search($num = 0,$str = NULL){    //for searching	
			
			//$num = (isset($_GET['num']))? $_GET['num']: $num;
			$str = (isset($_GET['str']))? $_GET['str']: $str;
			$config["base_url"] = base_url() . "index.php/display/search/";
			$config['total_rows'] = $this->student_model->total($str);
			$config["per_page"] = 5;
				
			$data['str'] = $str;
			$data['query'] = $this->student_model->searchPagination($config["per_page"], $num, $str);
			$this->pagination->initialize($config);
			$data["links"] = $this->pagination->create_links();
			
			$this->load->view('school/search_view',$data);
			/*if($num > 0){
				$this->load->view('templates/header');
				$this->load->view('school/index',$data);
				$this->load->view('templates/footer');
			}else{
				$this->load->view('school/search_view',$data);
			}
		}*/
		public function search($num = 0,$str = NULL){    //for searching	

			//$num = (isset($_GET['num']))? $_GET['num']: $num;
			$str = (isset($_GET['str']))? $_GET['str']: '';
			$div = (isset($_GET['div']))? $_GET['div']: '';
			$cla = (isset($_GET['cla']))? $_GET['cla']: '';
			$gen = (isset($_GET['gen']))? $_GET['gen']: '';
			$config["base_url"] = base_url() . "index.php/display/search/";
			$config['total_rows'] = $this->student_model->total($str, $div,$cla,$gen);
			$config["per_page"] = 5;
			
			$config['cur_tag_open'] = '<li><a><b>';
			$config['cur_tag_close'] = '</b></a></li>';
			$config['next_tag_open'] = '<li>';
			$config['next_tag_close'] = '</li>';
			$config['num_tag_open'] = '<li>';
			$config['num_tag_close'] = '</li>';
			$config['last_tag_open'] = '<li>';
			$config['last_tag_close'] = '</li>';
			$config['first_tag_open'] = '<li>';
			$config['first_tag_close'] = '</li>';
			$config['prev_tag_open'] = '<li>';
			$config['prev_tag_close'] = '</li>';
			
			$data['str'] = $str;
			$data['query'] = $this->student_model->searchPagination($config["per_page"], $num, $str);
			$this->pagination->initialize($config);
			$data["links"] = $this->pagination->create_links();
			
			$this->load->view('school/search_view',$data);
			
		}	
		
		public function fee(){
			
			$edited_fees = $_POST;
			$this->student_model->addFee($edited_fees);
			
			$data['fee'] = $this->student_model->getFee();
			
			$this->load->view('templates/header');
			$this->load->view('school/fee_view',$data);
			$this->load->view('templates/footer');
		}
		
		public function managefee() {   //for adding fee details
			
			$this->load->view('templates/header');
			$this->load->view('school/fee_manage_view');
			$this->load->view('templates/footer');
		}
		
		public function getStudentListFee() {   //for adding fee details

			if(isset($_POST['payCheck'])){             //to redirect to this method no need of the below method
				$this->student_model->addToFees();
			}
			if(isset($_POST['std']) && $_POST['std'] !='' && isset($_POST['division']) &&  $_POST['division'] != '' && isset($_POST['month']) && $_POST['month'] != '' && isset($_POST['year']) && $_POST['year'] != ''){
				$filter['std'] = isset($_POST['std'])?$_POST['std']:'';
				$filter['division'] = isset($_POST['division'])?$_POST['division']:'';
				$filter['month'] = isset($_POST['month'])? $_POST['month']:'';
				$filter['year'] = isset($_POST['year'])?$_POST['year']:'';
				
				$result['fees_array'] = $this->student_model->getFeeOfAClass();
				
				$result['studentList'] = $this->student_model->getStudentsForFees($filter);
				
				$result['filter'] = $filter;
			}else{
				$result['error'] = 'Please Select All details';
			}

			$this->load->view('templates/header');
			$this->load->view('school/fee_students_list',$result);
			$this->load->view('templates/footer');
		}
		
		/*public function addToFees()
		{
			if(isset($_POST['payCheck'])){
				$this->student_model->addToFees();
			}
			redirect('display/getStudentListFee');
		}*/

		public function deleteFee($id){
			$this->student_model->deletingFee($id);
			redirect('display/getStudentListFee');
		}
		
		public function manageOtherFee1(){
		
			$data['query'] = $this->student_model->getOtherFee();
			$this->load->view('templates/header');
			$this->load->view('school/other_fees',$data);
			$this->load->view('templates/footer');	
		}
		
		public function manageOtherFee2(){
			$data = array(
			'name' => $this->input->post('name'),
			'amount' => $this->input->post('amount'),
			'due_date' => $this->input->post('date'),
			);
			$this->student_model->addOtherFee($data);
			redirect('display/manageOtherFee1','refresh');	
		}
	}
?>
