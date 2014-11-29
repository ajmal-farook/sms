<div class="container main_container margintop">
	<div class="col-md-12">
		<div class="col-md-2 ">
			<?php foreach($student_details as $ro): ?>
			<h3><u>DETAILS OF</u></h3>
			<img src="<?php echo ($ro["photo"] != '')? base_url().'uploads/images/'.$ro["photo"] : base_url().'images/default.png'; ?>" class="imgStyle">
				 <h3><u><span class="detailClr"><?php echo  $ro['first_name'].' '.$ro['last_name']; ?></span></u></h3>
		</div>		 
		<div class="col-md-4 ">
			<div class="col-md-12">
				<h3>PERSONAL INFO</h3>
			</div>
			<table  class="table table-striped table-bordered table-hover" id="table" ">
				<tr class="danger">
					<th >DETAILS</th>
					<th >VALUES</th>
				</tr>
				<tr >
					<th class="">No.</th>
					<td><?php echo $ro['id']; ?></td>
				</tr>
				<tr>
					<th>Student Name</th>
					<td><strong><?php echo $ro['first_name'].' '.$ro['last_name']; ?></strong></td>
				</tr>
				<tr>
					<th>Father</th>
					<td><?php echo $ro['father_name']; ?></td>
				</tr>
				<tr>
					<th>Mother</th>
					<td><?php echo $ro['mother_name']; ?></td>
				</tr>
				<tr>
					<th>Phone</th>
					<td><?php echo $ro['phone']; ?></td>
				</tr>
				<tr>
					<th>Mobile</th>
					<td><?php echo $ro['mobile']; ?></td>
				</tr>
				<tr>
					<th>E-mail</th>
					<td><?php echo $ro['email']; ?></td>
				</tr>
				
				<tr>
					<th>DOB</th>
					<td><?php echo $ro['dob']; ?></td>
				</tr>
				<tr>
					<th>Gender</th>
					<td><?php echo $ro['gender']; ?></td>
				</tr>
				<tr>
					<th>Class</th>
					<td><?php echo $ro['class']; ?></td>
				</tr>
				<tr>
					<th>Division</th>
					<td><?php echo $ro['division']; ?></td>
				</tr>
				<tr>
					<th>Monthly Fee (in Rial)</th>
					<td><?php 
						if(count($student_fee) > 0) 
						echo $student_fee[0]['fee']; ?>
					</td>
				</tr>
				<tr>
					<th>Address</th>
					<td><?php echo $ro['address']; ?></td>
				</tr>
			<?php endforeach; ?>
			</table>
		
		</div>	
		<div class="col-md-6 ">
			<div class="col-md-12">
				<h3>REGULAR FEE DETAILS</h3>
			</div>
			<div class="row">
				<?php echo form_open('display/details/'.$id); ?>
				<div class="col-lg-6">
					<select class="form-control col-md-6" name="year">
							<?php for($year=2010; $year<=date("Y"); $year++){?>
							<option <?php if($selected_year == $year) echo "selected";?>><?php echo $year;?></option>
							<?php }?>
					</select>
				</div>	
				<div class="col-lg-6">
					<button class="btn btn-info form-control" onclick="paidStatus($id)"> GO </button>
				</div>
				<?php form_close();?>				
			</div>	
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="danger">
						<th>MONTH</th>
						<th>PAYMENT STATUS</th>
						<th>DATE</th>
					</tr>
				</thead>
				<tbody>
						<?php echo $list; ?>
				</tbody>		
			</table>
		</div>
	</div>
	<div class="col-md-12">
		<h3 >OTHER FEE DETAILS</h3>		
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr class="danger">
					<th>FEE NAME</th>
					<th>AMOUNT</th>
					<th>DUE DATE</th>
					<th>PAID/UNPAID</th>
					<th>PAID DATE</th>
				</tr>
			</thead>
			<tbody>
				<?php echo $Other_fee_list; ?>
			</tbody>		
		</table>
	</div>
</div>
