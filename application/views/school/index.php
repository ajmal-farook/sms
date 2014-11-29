<div class="margintop col-md-10 col-md-offset-1 container main_container">
<h2 >STUDENTS LIST</h2>
<div class="filtermargin">
		<div  class="filterleft">
			<input type="text" placeholder="SEARCH" onchange="changeFunction()" id="search" value="" />
		</div>
		<div  class="filterright ">
			<ul class="list-inline list-group">
				<li  class="">
					<ul class="list-inline marg" >
						<li class="class="">
							<font size="" color="#000099"><small>Class </small></font>
						</li>
						<li class="">
							<select name="clas" id="clas" class="filter" onchange="changeFunction()"> 
								<option value="">select class</option>
								<option value="1">I</option>
								<option value="2">II</option>
								<option value="3">III</option>
								<option value="4">IV</option>
								<option value="5">V</option>
								<option value="6">VI</option>
								<option value="7">VII</option>
								<option value="8">VIII</option>
								<option value="9">IX</option>
								<option value="10">X</option>
								<option value="11">XI</option>
								<option value="12">XII</option>
							</select>
						</li>
					</ul>
				</li>
				<li  class="">
					<ul class="list-inline marg" >
						<li class="">
							<font size="" color="#000099">Division </font>
						</li>
						<li class="">
							<select  id="division" name="division" class="filter" onchange="changeFunction()"> 
								<option value="" selected >ALL</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
							</select>
						</li>
					</ul>
				</li>
				<li  class="">
					<ul class="list-inline marg" >
						<li class="">
							<font size="+" color="#000099">Gender</font>
						</li>
						<li class="">
							<select name="gender" id="gender" class="filter" onchange="changeFunction()">
								<option value="">BOTH</option>
								<option value="male">male</option>
								<option value="female">female</option>
							</select>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
<div class="clear"></div>

<div id="header_div">
<table id="customers" class="table table-bordered table-striped table-hover" >
<tr class="danger">
	<th>No.</th>
	<th>Photo</th>
	<th>Student</th>
	<th>Gender</th>
	<th>Class</th>
	<th>Division</th>
	<th>Father</th>
	<th>Mother</th>
	<th>Phone</th>
	<th>Mobile</th>	
	<th>Address</th>
	<th>Delete</th>
	<th>Edit</th>
</tr>

<?php 
$roman = array("","I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII");
foreach($query as $row): ?>
	<tr >
		<?php $id = $row['id']; ?>
		<?php $name = $row['first_name'].' '.$row['last_name']; ?> 
		<td><?php echo $row['id']; ?></td>
		<td><img  src="<?php echo ($row["photo"] !='') ? base_url().'uploads/images/'.$row["photo"] : base_url().'images/default.png'; ?> " class="imgStyleList"></td>
		<td><?php echo anchor("display/details/$id",$row['first_name'].' '.$row['last_name']); ?></td>
		<td class="center"><img src="<?php $imgGender = ($row['gender'] == "male")? 'male.png' : 'female.png'; echo base_url().'images/'.$imgGender; ?>" alt="<?php $imgGender = ($row['gender'] == "male")? 'male' : 'female';  ?>" /></td>
		<td><?php $class = $row['class']; 		   
		   echo $roman[$class];?></td>
		<td><?php echo $row['division']; ?></td>
		<td><?php echo $row['father_name']; ?></td>
		<td><?php echo $row['mother_name']; ?></td>
		<td><?php echo $row['phone']; ?></td>
		<td><?php echo $row['mobile']; ?></td>		
		<td><?php echo $row['address']; ?> </td>
		<td class="center_edit"><a href="<?php echo base_url();?>index.php/display/delete/<?php echo $id; ?>" onclick="return alfunction()"><img src="<?php echo base_url();?>images/Delete.jpg" width="15" height="15" alt="some_text"></a></td>
		<td class="center_edit"><a href="<?php echo base_url();?>index.php/display/edit/<?php echo $id; ?>"><img src="<?php echo base_url();?>images/edit.png" width="15" height="15" alt="some_text"></a></td>
	</tr>
<?php endforeach; ?>
</table>
<div class="pages">
	<ul class="pagination"><?php echo $links; ?></ul>
</div>
<br/>
</div>
