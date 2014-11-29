  <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
	  $(function() {
		$( ".datepicker" ).datepicker();
	  });
  </script>
<div class="container main_container margintop">
<?php 
	$at = array('class'=>'form-inline margintop col-md-12 container main_container');
	echo form_open('exam_display/resultpublish2',$at);
	?>
<h3>Exam List</h3>
<div class="form-group ">
	<label  for="exampleInputEmail2">Name</label>
	<input type="text" class="reullt_pubish" id="exampleInputEmail2" name="name" >
	</div>
		<div class="form-group ">
	<label  for="exampleInputPassword2">Date</label>
	<input type="text" class="form-control datepicker" name="date" size="8" placeholder="click here !" >
	</div>
	<button type="submit" class="btn btn-default">ADD</button>
	</div>
	<?php echo form_close(); ?>
		<div class="martop">
	<h3>EXISTING EXAM DETAILS</h3>
	<table id="table" class="table table-bordered table-striped table-hover">

	<tr  class="danger"	>
	<th>Name</th>
	<th>Date</th>
	<th>Delete</th>
	
	</tr>
	<?php foreach($query as $row): ?>
	<tr>
	<td><a href="<?php echo base_url();?>index.php/student/getotherstudentlist/<?php echo $row['id'];?>"><?php echo $row['name']; ?></a></td>
	
	<td><?php echo $row['date']; ?></td>
	<td><a href="<?php echo base_url();?>index.php/student/deleteOtherFee/<?php echo $row['id']; ?>" onclick="return alfunction()"><img src="<?php echo base_url();?>images/Delete.jpg" width="15" height="15" alt="some_text"></a></td>
	</tr>
	<?php endforeach; ?>
	</table>
	</div>