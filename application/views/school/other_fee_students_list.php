
<?php 
	echo form_open("student/getOtherStudentListFee/$id");
	if(!isset($error)):
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
</form>
	<div class="">
		<?php 
			echo form_open("student/getOtherStudentListFee/$id");
		?>
		<input type="hidden" name="std" value="<?php echo $filter['std']; ?>">
		<input type="hidden" name="division" value="<?php echo $filter['division']; ?>" >
			<div class="col-md-10 col-md-offset-1">
				<table class="table table-striped table-bordered table-hover"style="margin-top: 30px";>
			  <thead>
				<tr class="danger">
				  <th>Id</th>
				  <th>Name</th>
				  <th>Fees</th>
				  <th >Paid Status <input type="checkbox" id="selectall"/> Select All</th>
				  <th>Paid Date</th>
				</tr>
			  </thead>
			  <tbody>
			  <?php foreach($studentList as $student){?>
				<tr>
				  <td><?php echo $student['roll_no']?></td>
				  <td><?php echo $student['first_name']." ".$student['last_name']?></td>
				  <td><?php echo $fees_array[0]['amount']; ?></td>
				  <td>
					<?php 
						$paid_sting = 'Paid <a href="'.base_url().'/index.php/student/deleteStudentOtherFee/'.$student['fees_id'].'/'. $id .'" onclick="return alfunction()"><img src="'.base_url().'/images/Delete.jpg" width="15" height="15" alt="some_text"></a>';
						echo isset($student['date'])? $paid_sting : 'not paid  <input type="checkbox" class="checkbox1" name="payCheck[]" value="'.$student["id"].'" >'; 
					?>
				  </td>
				  <td><?php echo isset($student['date'])?  $student['date']  : '<input type="text"  name="date[]"  class="datepicker" size="8" placeholder="click here !" >'; ?></td>
				</tr>
				<?php }?>
				<tr>
					<td colspan="5" align="center">
						<button type="submit" class="btn btn-primary" >Update</button>
					</td>
				</tr>
			  </tbody>
			</table>
			</div>
		</form>
	</div>
<?php else: ?>
	<div class="martop col-md-10 col-md-offset-1  form-group">
	<div class="alert alert-danger"><p><?php echo $error ?></p></div>
	<label>CLASS</label>
		<select name="std">
			<option value="">select class</option>
			<option  value="1">I</option>
			<option  value="2">II</option>
			<option  value="3">III</option>
			<option  value="4">IV</option>
			<option  value="5">V</option>
			<option  value="6">VI</option>
			<option  value="7">VII</option>
			<option  value="8">VIII</option>
			<option  value="9">IX</option>
			<option  value="10">X</option>
			<option  value="11">XI</option>
			<option  value="12">XII</option>
		</select>
	<label> DIVISION</label>		
		<select name="division">
			<option  value="">select division</option>
			<option  value="A">A</option>
			<option  value="B">B</option>
			<option  value="C">C</option>
			<option  value="D">D</option>
			<option  value="E">E</option>
			<option  value="F">F</option>
			<option  value="G">G</option>
			<option  value="H">H</option>
			<option  value="I">I</option>
			<option  value="J">J</option>
		</select>
		<br />
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary" name"manage-fee-form">Submit</button>
		</div>
		</div>
</div>
</form>
<?php endif; ?>

  <script>
	  $(function() {
		$( ".datepicker" ).datepicker({ defaultDate: +7 });
	  });
	  $(document).ready(function() {
    $('#selectall').click(function(event) {
        if(this.checked) {
            $('.checkbox1').each(function() {
                this.checked = true;               
            });
        }else{
            $('.checkbox1').each(function() {
                this.checked = false;                      
            });         
        }
    });
    
});
  </script>
