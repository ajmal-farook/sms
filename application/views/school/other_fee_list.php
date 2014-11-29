<?php 
	echo form_open("student/getOtherStudentListFee/$id");
	$filter=0;
?>
<div class="martop col-md-10 col-md-offset-1 form-inline">
	<label>CLASS</label>
		<select name="std">
			<option value="">select class</option>
			<option <?php if($filter['std'] == 1){ echo 'selected';} ?> value="1">I</option>
			<option <?php if($filter['std'] == 2){ echo 'selected';} ?> value="2">II</option>
			<option <?php if($filter['std'] == 3){ echo 'selected';} ?> value="3">III</option>
			<option <?php if($filter['std'] == 4){ echo 'selected';} ?> value="4">IV</option>
			<option <?php if($filter['std'] == 5){ echo 'selected';} ?> value="5">V</option>
			<option <?php if($filter['std'] == 6){ echo 'selected';} ?> value="6">VI</option>
			<option <?php if($filter['std'] == 7){ echo 'selected';} ?> value="7">VII</option>
			<option <?php if($filter['std'] == 8){ echo 'selected';} ?> value="8">VIII</option>
			<option <?php if($filter['std'] == 9){ echo 'selected';} ?> value="9">IX</option>
			<option <?php if($filter['std'] == 10){ echo 'selected';} ?> value="10">X</option>
			<option <?php if($filter['std'] == 11){ echo 'selected';} ?> value="11">XI</option>
			<option <?php if($filter['std'] == 12){ echo 'selected';} ?> value="12">XII</option>
		</select>
	<label> DIVISION</label>		
		<select name="division">
			<option  value="">select division</option>
			<option <?php if($filter['division'] == 'A'){ echo 'selected';} ?> value="A">A</option>
			<option <?php if($filter['division'] == 'B'){ echo 'selected';} ?> value="B">B</option>
			<option <?php if($filter['division'] == 'C'){ echo 'selected';} ?> value="C">C</option>
			<option <?php if($filter['division'] == 'D'){ echo 'selected';} ?> value="D">D</option>
			<option <?php if($filter['division'] == 'E'){ echo 'selected';} ?> value="E">E</option>
			<option <?php if($filter['division'] == 'F'){ echo 'selected';} ?> value="F">F</option>
			<option <?php if($filter['division'] == 'G'){ echo 'selected';} ?>  value="G">G</option>
			<option <?php if($filter['division'] == 'H'){ echo 'selected';} ?> value="H">H</option>
			<option <?php if($filter['division'] == 'I'){ echo 'selected';} ?> value="I">I</option>
			<option <?php if($filter['division'] == 'J'){ echo 'selected';} ?> value="J">J</option>
		</select>

		<button type="submit" class="btn btn-primary" name"manage-fee-form">Submit</button>

</div>
<?php echo form_close(); ?>