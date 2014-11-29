<?php

class Student_model extends CI_Model{

	public function __construct(){
		$this->load->database();
	}
	
	//for fetching all data from database
	public function getStudent(){
		$query = $this->db->get('addstudent');
		return $query->result_array(); 
	}
	
	//add to database table 'addStudent'
	public function add_Student($data){
		$this->db->insert('addstudent',$data);    
	}
	
	//total rows in the table
	/*public function total($str = NULL) {
		if($str != NULL){
			$this->db->like('first_name', $str);
		}
		return $this->db->count_all_results("addstudent");
	}*/
	public function total($str = NULL,$div = '',$cla = '',$gen = '') {
			if($str != NULL){
				$this->db->like('first_name', $str);
			}
			if($div != ''){
				$this->db->where('division', $div);
			}
			if($cla != ''){
				$this->db->where('class', $cla);
			}
			if($gen != ''){
				$this->db->where('gender', $gen);
			}
			return $this->db->count_all_results("addstudent");
		}
	
	//for pagination
	public function paginating($limit, $start ,$str=NULL){
		
		if($str != NULL){
			$this->db->like('first_name', $str, 'both');
		}
        $this->db->limit($limit, $start);
        $query = $this->db->get("addstudent");
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;	
   }
 
	/*	public function searchPagination($limit, $start ,$str=NULL){
	
		if($str != NULL){
			$this->db->like('first_name', $str, 'both');
			$this->db->or_like('father_name', $str, 'both');
			$this->db->or_like('mother_name', $str, 'both');
			$this->db->or_like('class', $str, 'both');
			$this->db->or_like('phone', $str, 'both');
			$this->db->or_like('mobile', $str, 'both');
		}
        $this->db->limit($limit, $start);
        $query = $this->db->get("addstudent");
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;	
   }*/
   
   public function searchPagination($limit, $start ,$str=NULL){
			if(isset($_GET['div']) && $_GET['div'] != ''){
				$division = $_GET['div'];
				$this->db->where('division', $division);
			}
			if(isset($_GET['cla']) && $_GET['cla'] != ''){
				$clas = $_GET['cla'];
				$this->db->where('class', $clas);
			}
			if(isset($_GET['gen']) && $_GET['gen'] != ''){
				$gender = $_GET['gen'];
				$this->db->where('gender', $gender);
			}
			if($str != NULL){
				$this->db->where("(first_name LIKE '%$str%' || last_name LIKE '%$str%' || father_name LIKE '%$str%' || mother_name LIKE '%$str%' || phone LIKE '%$str%' || mobile LIKE '%$str%')"); 
				//$this->db->like('first_name', $str, 'both');
				//$this->db->or_like('father_name', $str, 'both');
			}
			$this->db->limit($limit, $start);
			$query = $this->db->get("addstudent");
			//echo $this->db->last_query();
			if ($query->num_rows() > 0) {
				foreach ($query->result_array() as $row) {
					$data[] = $row;
				}
				return $data;
			}
			return false;	
		}
   
   //for deleting
   public function deleting($id){
   		$this->db->where('id',$id);
		$this->db->delete('addstudent');
   }
   
   //for displaying from a link
   public function detailed($id){
   		$this->db->where('id',$id);
		$query = $this->db->get('addstudent');
		
		return $query->result_array();
   }
   
   public function student_fee_details($id){
   		
		$this->db->where('id',$id);
		$query = $this->db->get('addstudent');
		
		return $query->result_array();
   }
   
   //for editing
   public function editing($id)
   {
   		$this->db->where('id',$id);
		$query = $this->db->get('addstudent');
		return $query->result_array();
   }
   
   public function updating($id,$upload){ //for updating the row
    	$data = array(
			'first_name' => $this->input->post('Fname'),
			'last_name' => $this->input->post('Lname'),
			'father_name' => $this->input->post('father'),
			'mother_name' => $this->input->post('mother'),
			'phone' => $this->input->post('phone'),
			'mobile' => $this->input->post('mobile'),
			'email' => $this->input->post('email'),
			'photo' => $upload,										 //uploading the photo
			'dob' => $this->input->post('dob'),
			'gender' => $this->input->post('gender'),
			'class' => $this->input->post('class'),
			'division' => $this->input->post('division'),
			'roll_no' => $this->input->post('rollno'),
			'address' => $this->input->post('address'),
		);
		$this->db->where('id',$id);
		$this->db->update('addstudent',$data);
   
   }
   
   public function addFee($data){
		$id = 0;		
		foreach($data as $key=>$fee){
			$id++;
			$fees = array('fee' => $fee);
			$this->db->where('id', $id);
			$this->db->update('class', $fees);
		}
		return;
	}
	
	public function getfee(){
		$this->db->select('fee');
		$query = $this->db->get('class');
		
		if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
            return $data;
        }
	}
	
	//for fetching all data from database
	public function getStudentsForFees($filter){
		$sql_query ="";
		$condition ="";
			$sql_query .= "SELECT c.id as fees_id, s.id, s.roll_no as roll_no,s.first_name as first_name ,s.last_name as last_name, c.date as date ";
			$sql_query .= "FROM (SELECT * from addstudent WHERE class = ".$filter['std']." AND `division` = '".$filter['division']."') s ";
			$sql_query .= "left join fees c on s.id = c.student_id ";

			$condition .= " AND c.`month` = '".$filter['month']."' ";
			$condition .= " AND c.`year` = ".$filter['year']." ";

		$sql_query .= $condition;
		if($sql_query !=''){
			$query =$this->db->query($sql_query);
			return($query->result_array()); 
		}else{
			return array();
		}
	}
	public function getFeeOfAClass($class = NULL){
		if(isset($_POST['std'])){
			$std = $_POST['std'];
		}else{
			$std = $class;
		}
		$this->db->select('fee');
		$fee = $this->db->get_where('class', array('class' => $std));
		return $fee->result_array();
	}
	
	public function addToFees()
	{		
		$pay = $_POST['payCheck'];
		$date = $_POST['date'];
		$month = $_POST['month'];
		$year = $_POST['year'];
		$no = count($pay);
			for($i=0; $i<$no; $i++)
			{
				$currDate = date('YYYY-MM-DD',strtotime($date[$i]));
				$date[$i] = ($date[$i] == '')? date("Y-m-d"): $date[$i];
				$data = array(
					'student_id' => $pay[$i],
				   'date' => date('Y-m-d', strtotime($date[$i])),
				   'month' => $month,
				   'year' => $year
				);
				$this->db->insert('fees', $data);
			}
	}
	public function paidStatus($id, $year)
	{
		$months = array('January','February','March','April','May','June','July','August','September','October','November','December');
		$list = "";
		foreach($months as $month){
			$query_string  = "SELECT `date` FROM fees WHERE `student_id`= ".$id." ";
			$query_string .= "AND `month` = '".$month."' AND `year` = '".$year."'";
			$results = $this->db->query($query_string);
			$paid = $results->row();
			// print_r($paid->date);die;
			$list .= "<tr>";
			$list .= "<td>".$month."</td>";
			$list .= "<td>";
			if(isset($paid->date))
				$list .= "<span class=green> Paid";
			else
				$list .= "<span class=clr>Not Paid";
			$list .= "</td>";
			$list .= "<td>";
			if(isset($paid->date))
				$list .= $paid->date;
			else
				$list .= "<span class=clr>";
			$list .= "</td>";
			$list .= "</tr>";
		}
		return $list;		
	}

	public function deletingFee($id){
   		$this->db->where('id',$id);
		$this->db->delete('fees');
   }

	public function addOtherFee($data){
		$this->db->insert('other_fee_types',$data);    
	}
	
	public function getOtherFee(){
		$query = $this->db->get('other_fee_types');
		return $query->result_array(); 
	}
	
	public function getAmountOfOtherFee($other_id){
		$this->db->select('amount');
		$fee = $this->db->get_where('other_fee_types', array('id' => $other_id));
		return $fee->result_array();
	}
	
	public function getStudentsForOtherFees($filter){
		$sql_query ="";
		$condition ="";
			$sql_query .= "SELECT of.id as fees_id, s.id, s.roll_no as roll_no,s.first_name as first_name ,s.last_name as last_name, of.date as date ";
			$sql_query .= "FROM (SELECT * from addstudent WHERE class = ".$filter['std']." AND `division` = '".$filter['division']."') s ";
			$sql_query .= "left join other_fees of on s.id = of.stud_id ";
			$condition .= " AND of.`fee_id` = '".$filter['other_id']."' ";
			$sql_query .= $condition;
		if($sql_query !=''){
			$query =$this->db->query($sql_query);
			return($query->result_array()); 
		}else{
			return array();
		}
	}
	
	public function addToOtherFees($other_id)
	{		
		$pay = $_POST['payCheck'];
		$date = $_POST['date'];
		$no = count($pay);
			for($i=0; $i<$no; $i++)
			{
				$currDate = date('YYYY-MM-DD',strtotime($date[$i]));
				$date[$i] = ($date[$i] == '')? date("Y-m-d"): $date[$i];
				$data = array(
					'stud_id' => $pay[$i],
					'fee_id' => $other_id,
				   'date' => date('Y-m-d', strtotime($date[$i]))
				);
				$this->db->insert('other_fees', $data);
			}
	}
	
	public function deletingOtherFee($id){     //for deleting from other fees
   		$this->db->where('id',$id);
		$this->db->delete('other_fee_types');
   }
   
   public function deletingStudentOtherFee($id){
		$this->db->where('id',$id);
		$this->db->delete('other_fees');
   }
   
   public function otherFeedetailed($stud_id){  //to display other fee details
			$fee_array = $this->getIdOfAllFees();
			$list = '';
			foreach($fee_array as $fee){
				$this->db->where('stud_id',$stud_id);
				$this->db->where('fee_id',$fee['id']);
				$result = $this->db->get('other_fees');
				$result = $result->result_array();
				$list .= '<tr>';
				$list .= '<td>'.$fee['name'].'</td>';
				$list .= '<td>'.$fee['amount'].'</td>';
				$list .= '<td>'.$fee['due_date'].'</td>';
				if(!empty($result)){
					$list .= '<td><span class="green">paid</td>';
					$list .= '<td>'.$result[0]['date'].'</td>';
				}else{
					$list .= '<td><span class="clr">Not paid</td>';
					$list .= '<td></td>';
				}
				$list .= '</tr>';
			}		
		return $list;
   }
   
   public function getIdOfAllFees(){ 
		$result = $this->db->get('other_fee_types'); //getting all data from this table
		return $result->result_array();
	}
	
}
?>