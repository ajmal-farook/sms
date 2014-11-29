<div class="col-md-10 col-md-offset-1 container main_container margintop" >
	<h2  class="row">ADD A STUDENT </h2>
	<div class="row"style="background-color:#E0E0E0;padding:10px; ">
		<div class="col-md-6">
			
			<?php 
				echo @$error;
				$attributes = array('class' => 'form-horizontal');
				echo form_open_multipart('/student/create', $attributes); 
			?>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">First Name</span>
				<div class="col-sm-9">
					<input type="text" name="Fname" name"  class="form-control" placeholder="">
				</div>
			</div>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Last Name</span>
				<div class="col-sm-9">
					<input type="text" name="Lname"  class="form-control" placeholder="">
				</div>
			</div>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Father's Name</span>
				<div class="col-sm-9">
					<input type="text" name="father" name"  class="form-control" placeholder="">
				</div>
			</div>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Mother's Name</span>
				<div class="col-sm-9">
					<input type="text" name="mother"  name"  class="form-control" placeholder="">
				</div>
			</div>			
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Phone No.</span>
				<div class="col-sm-9">
					<input type="text" name="phone"   class="form-control" placeholder="">
				</div>
			</div>			
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Mobile No.</span>
				<div class="col-sm-9">
					<input type="text" name="mobile"   class="form-control" placeholder="">
				</div>
			</div>			
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">E-mail id</span>
				<div class="col-sm-9">
					<input type="text" name="email"   class="form-control" placeholder="">
				</div>
			</div>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Uplaod photo</span>
				<div class="col-sm-9 "style="padding:15px 16px; ">
					<input type="file" name="userfile"  class="" size="15">
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">DOB</span>
				<div class="col-sm-9">
					<input type="text"  class="form-control"  id="datepicker" name="dob" placeholder="click here !">
				</div>
			</div>			
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Gender</span>
				<div class="col-sm-9">
					<div  class="col-sm-1 padd">
						<input  name="gender" type="radio" value="male"  class="col-sm-6" id="inputEmail3" placeholder="">
					</div>
					<div  class="col-sm-3 padd">Male</div>
					<div  class="col-sm-1 padd">
						<input name="gender" type="radio" value="female" class="" id="inputEmail3"/>
					</div>
					<div  class="col-sm-3 padd">Female</div>
				</div>
			</div>
			<div class="row">
				<span for="inputEmail3" class="col-sm-3 control-label">Class</span>
				<div class="col-sm-3  ">
					<select name="class" class="drop select input-sm form-control"> >
						<option value="">select</option>
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
				<span for="inputEmail3" class="col-sm-3 control-label">Division</span>
				<div class="col-sm-3  ">
					<select name="division" class="drop select input-sm form-control"> >
						<option value="">select</option>
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
			<div class="row">
				<span  class="col-sm-3 control-label">Roll No.</span>
				<div class="col-sm-9">
					<input type="text" name="rollno" class="form-control"  placeholder="">
				</div>
			</div>
			<div class="row">
				<span  class="col-sm-3 control-label">Address</span>
				<div class="col-sm-9">
					<textarea rows="5"  name="address"class="form-control" ></textarea>
				</div>
			</div>
			<div class="row">
			<button type="submit" class="btn btn-primary btn-sm" style="float:right; margin-right:15px;"onclick="return sub()">Submit</button>
			</div>
		</div>
	</div>
		</form >
		
		
		<script>
			$(function() {
				$( "#datepicker" ).datepicker({
					changeMonth: true,
					changeYear: true
				});
			});
		</script>
