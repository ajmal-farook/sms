<div class="col-md-6 col-md-offset-3 container main_container">


<?php foreach($query as $row): ?>
<h2>STUDENT ADDING FORM</h2>
<?php 
$attributes = array('class' => 'form-horizontal');
echo form_open_multipart('display/updating/'.$row['id'], $attributes ); ?> 
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">First Name</label>
		<div class="col-sm-9">
			<input type="text" name="Fname"   class="form-control" id="inputEmail3" value="<?php echo $row['first_name']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Last Name</label>
		<div class="col-sm-9">
			<input type="text" name="Lname"   class="form-control"  value="<?php echo $row['last_name']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Father's Name</label>
		<div class="col-sm-9">
			<input type="text" name="father"  class="form-control" id="inputEmail3" value="<?php echo $row['father_name']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Mother's Name</label>
		<div class="col-sm-9">
			<input type="text" name="mother"   class="form-control" id="inputEmail3" value="<?php echo $row['mother_name']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Phone No.</label>
		<div class="col-sm-9">
			<input type="text" name="phone"   class="form-control" id="inputEmail3" value="<?php echo $row['phone']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Mobile No.</label>
		<div class="col-sm-9">
			<input type="text" name="mobile"   class="form-control" id="inputEmail3" value="<?php echo $row['mobile']; ?>" placeholder="">
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">E-mail id</label>
		<div class="col-sm-9">
			<input type="text" name="email"   class="form-control" value="<?php echo $row['email']; ?>">
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Uplaod photo</label>
		<div class="col-sm-9">
			<input type="file"   name="userfile" size="15">
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">DOB</label>
		<div class="col-sm-9">
			<input type="text"  class="form-control"  id="datepicker" name="dob" value="<?php echo $row['dob']; ?>" placeholder="">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Gender</label>
		<div class="col-sm-9">
			<div  class="col-sm-3">
				<?php $checked = 'checked="checked"'; ?>
				<input  name="gender" type="radio" value="male" <?php echo ($row['gender'] == 'male')? $checked:''; ?>  class="form-control col-sm-6" id="inputEmail3" placeholder=""></div><div  class="col-sm-3 padd">Male
			
			</div>
			<div  class="col-sm-3">
				<input name="gender" type="radio" value="female" <?php echo ($row['gender'] == 'female')? $checked:''; ?> class="form-control" id="inputEmail3" /></div><div  class="col-sm-3 padd">Female
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Class</label>
		<div class="col-sm-9  ">
			<select name="class" class="drop select input-lg form-control" value="<?php echo $row['class']; ?>"> >
				<option value="">select class</option>
				<option  value="I">I</option>
				<option  value="II">II</option>
				<option  value="III">III</option>
				<option  value="IV">IV</option>
				<option  value="V">V</option>
				<option  value="VI">VI</option>
				<option  value="VII">VII</option>
				<option  value="VIII">VIII</option>
				<option  value="IX">IX</option>
				<option  value="X">X</option>
				<option  value="XI">XI</option>
				<option  value="XII">XII</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 control-label">Division</label>
		<div class="col-sm-9  ">
			<select name="division"class="drop input-lg form-control"> >
				<option value="<?php echo $row['division']; ?>">select division</option>
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
				<option value="E">E</option>
				<option value="F">F</option>
				<option value="G">G</option>
				<option value="H">H</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label  class="col-sm-3 control-label">Roll No.</label>
		<div class="col-sm-9">
			<input type="text" name="rollno" class="form-control"  value="<?php echo $row['roll_no']; ?>">
		</div>
	</div>
	<div class="form-group">
		<label  class="col-sm-3 control-label">Address</label>
		<div class="col-sm-9">
			<textarea rows="5"  name="address"class="form-control" ><?php echo $row['address']; ?></textarea>
		</div>
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-primary btn-lg btn-block">UPDATE</button>
	</div>
<?php form_close();?>
<?php endforeach; ?>
</div>

<script>
$(function() {
	$( "#datepicker" ).datepicker({
		changeMonth: true,
		changeYear: true
	});
});
</script>
