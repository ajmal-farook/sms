<div class="container main_container margintop">
<h2>ADD FEES</h2>
	<?php 
	$at = array('class'=>'form-inline ');
	echo form_open('display/manageOtherFee2',$at);
	?>
	
	<div class="form-group ">
	<label  for="exampleInputEmail2">Name of Fees</label>
	<input type="text" class="form-control" id="exampleInputEmail2" name="name" >
	</div>
	<div class="form-group">
	<label  for="exampleInputPassword2">Amount</label>
	<input type="text" class="form-control" name="amount" id="exampleInputPassword2">
	</div>
	<div class="form-group ">
	<label  for="exampleInputPassword2">Due date</label>
	<input type="text" class="form-control datepicker" name="date" size="8" placeholder="click here !" >
	</div>
	<button type="submit" class="btn btn-primary ">Submit</button>
	<?php echo form_close(); ?>

	<div class="">
	<h3 style=" background-color: #E7E7E7;">EXISTING FEE DETAILS</h3 >
	<table id="table" class="table table-bordered table-striped table-hover">

	<tr  class="danger"	>
	<th>FEE</th>
	<th>AMOUNT</th>
	<th>DUE DATE</th>
	<th>DELETE</th>
	</tr>
	<?php foreach($query as $row): ?>
	<tr>
	<td><a href="<?php echo base_url();?>index.php/student/getotherstudentlist/<?php echo $row['id'];?>"><?php echo $row['name']; ?></a></td>
	<td><?php echo $row['amount']; ?></td>
	<td><?php echo $row['due_date']; ?></td>
	<td><a href="<?php echo base_url();?>index.php/student/deleteOtherFee/<?php echo $row['id']; ?>" onclick="return alfunction()"><img src="<?php echo base_url();?>images/Delete.jpg" width="15" height="15" alt="some_text"></a></td>
	</tr>
	<?php endforeach; ?>
	</table>
	</div>
</div>


<script>
  $(function() {
	$( ".datepicker" ).datepicker();
  });
</script>
