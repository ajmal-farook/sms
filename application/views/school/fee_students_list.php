
<?php 
	echo form_open('display/getStudentListFee');
	if(!isset($error)):
?>
	<div class="martop col-md-10 col-md-offset-1 ">
		<div class="">
			<div class=" col-sm-3">
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
			</div>
			<div class=" col-sm-3">	
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
			</div>
			<div class=" col-sm-3">
				<label> MONTH</label>	
				<select name="month">
					<option  value="">select month</option>
					<option <?php if($filter['month'] == 'January'){ echo 'selected';} ?> value="January">JAN</option>
					<option <?php if($filter['month'] == 'February'){ echo 'selected';} ?> value="February">FEB</option>
					<option <?php if($filter['month'] == 'March'){ echo 'selected';} ?> value="March">MAR</option>
					<option <?php if($filter['month'] == 'April'){ echo 'selected';} ?> value="April">APR</option>
					<option <?php if($filter['month'] == 'May'){ echo 'selected';} ?> value="May">MAY</option>
					<option <?php if($filter['month'] == 'June'){ echo 'selected';} ?> value="June">JUN</option>
					<option <?php if($filter['month'] == 'July'){ echo 'selected';} ?> value="July">JUL</option>
					<option <?php if($filter['month'] == 'August'){ echo 'selected';} ?> value="August">AUG</option>
					<option <?php if($filter['month'] == 'September'){ echo 'selected';} ?> value="September">SEP</option>
					<option <?php if($filter['month'] == 'October'){ echo 'selected';} ?> value="October">OCT</option>
					<option <?php if($filter['month'] == 'November'){ echo 'selected';} ?> value="November">NOV</option>
					<option <?php if($filter['month'] == 'December'){ echo 'selected';} ?> value="December">DEC</option>			
				</select>
			</div>
			<div class=" col-sm-2">
				<label> YEAR</label>	
				<select name="year">
					<option value="">select year</option>
					<option <?php if($filter['year'] == 2014){ echo 'selected';} ?> value="2014">2014</option>
					<option <?php if($filter['year'] == 2015){ echo 'selected';} ?> value="2015">2015</option>
					<option <?php if($filter['year'] == 2016){ echo 'selected';} ?> value="2016">2016</option>
					<option <?php if($filter['year'] == 2017){ echo 'selected';} ?> value="2017">2017</option>
					<option <?php if($filter['year'] == 2018){ echo 'selected';} ?> value="2018">2018</option>
					<option <?php if($filter['year'] == 2019){ echo 'selected';} ?> value="2019">2019</option>
					<option <?php if($filter['year'] == 2020){ echo 'selected';} ?> value="2020">2020</option>
					<option <?php if($filter['year'] == 2021){ echo 'selected';} ?> value="2021">2021</option>
					<option <?php if($filter['year'] == 2022){ echo 'selected';} ?> value="2022">2022</option>
					<option <?php if($filter['year'] == 2023){ echo 'selected';} ?> value="2023">2023</option>
					<option <?php if($filter['year'] == 2024){ echo 'selected';} ?> value="2024">2024</option>
					<option <?php if($filter['year'] == 2025){ echo 'selected';} ?> value="2025">2025</option>
				</select>
			
			</div>
			<div class="col-md-1">
				<button type="submit" class="btn btn-primary" name"manage-fee-form">Submit</button>
			</div>
		</div>
	</div>
</form>
	<div class="">
		<?php echo form_open('display/getStudentListFee');?>
			<input type="hidden" name="std" value="<?php echo $filter['std']; ?>">
			<input type="hidden" name="division" value="<?php echo $filter['division']; ?>" >
			<input type="hidden" name="month" value="<?php echo $filter['month']; ?>">
			<input type="hidden" name="year" value="<?php echo $filter['year']; ?>" >
				<div class="col-md-10 col-md-offset-1">
					<table class="table table-striped table-bordered table-hover" style="margin-top: 30px";>
						<thead>
							<tr class= "danger" >
								<th>Id</th>
								<th>Name</th>
								<th>Fees</th>
								<th style="width:220px";>Paid Status <input type="checkbox" id="selectall"/> Select All</th>
								<th>Paid Date</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach($studentList as $student){?>
							<tr>
								<td><?php echo $student['roll_no']?></td>
								<td><?php echo $student['first_name']." ".$student['last_name']?></td>
								<td><?php echo $fees_array[0]['fee']; ?></td>
								<td>
								<?php 
								$paid_sting = 'Paid <a href="'.base_url().'index.php/display/deleteFee/'.$student['fees_id'].'" onclick="return alfunction()"><img src="'.base_url().'images/Delete.jpg" width="15" height="15" alt="some_text"></a>';
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
	<div class="martop col-md-10 col-md-offset-1">
		<div class="alert alert-danger"><p><?php echo $error ?></p></div>
		<div>
		<div class=" col-md-2">
			<span class="">CLASS</span>
			<select name="std" class="">
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
		</div>
		<div class=" col-md-3">
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
		</div>
	<div class=" col-md-3">
		<label> MONTH</label>	
			<select name="month">
				<option  value="">select month</option>
				<option  value="January">JAN</option>
				<option  value="February">FEB</option>
				<option  value="March">MAR</option>
				<option  value="April">APR</option>
				<option  value="May">MAY</option>
				<option  value="June">JUN</option>
				<option  value="July">JUL</option>
				<option  value="August">AUG</option>
				<option  value="September">SEP</option>
				<option  value="October">OCT</option>
				<option  value="November">NOV</option>
				<option  value="December">DEC</option>			
			</select>
		</div>
		<div class=" col-md-2">
			<label> YEAR </label>	
			<select name="year">
				<option value="">select year</option>
				<option  selected="selected" value="2014">2014</option>
				<option  value="2015">2015</option>
				<option  value="2016">2016</option>
				<option  value="2017">2017</option>
				<option  value="2018">2018</option>
				<option  value="2019">2019</option>
				<option  value="2020">2020</option>
				<option  value="2021">2021</option>
				<option  value="2022">2022</option>
				<option  value="2023">2023</option>
				<option  value="2024">2024</option>
				<option  value="2025">2025</option>			
			</select>
		</div>
		<div class=" col-md-2">
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