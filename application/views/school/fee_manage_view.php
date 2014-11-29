<?php 
	$at = array('class'=>'form-inline');
	echo form_open('display/getStudentListFee',$at); 
?>
<div class="margintop  col-md-10 col-md-offset-1 form-group ">
<h2 >MONTHLY FEE</h2>
	<div class="row">
		<div class=" col-md-2">
			<label class="">CLASS</label>
			<select name="std" class="drop select input-sm form-control">
				<option value="">select </option>
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
			<select name="division"class="drop select input-sm form-control">
				<option  value="">select</option>
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
			<select name="month"class="drop select input-sm form-control">
				<option  value="">select</option>
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
			<label class="control-label"> YEAR </label>	
			<select name="year"class="drop select input-sm form-control">
				<option value="">select</option>
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
			<button type="submit" class="btn btn-primary btn-sm form-control" name"manage-fee-form">Submit</button>
		</div>	
	</div>	
</div>
</form>
