<?php	
	class exam_display extends CI_Controller{
	
		public function __construct(){
		
			parent::__construct();
			$this->load->model('exam_model');
		}
			public function resultpublish() {
			$data['query'] = $this->exam_model->addexam();
			$this->load->view('templates/header');
			$this->load->view('school/result_addexam',$data);
			$this->load->view('templates/footer');	
		}
		public function resultpublish2(){
			$data = array(
			'name' => $this->input->post('name'),
			'date' => $this->input->post('date'),
			);
			$this->exam_model->addexam1($data);
			redirect('exam_display/resultpublish','refresh');	
		}
		}
		?>