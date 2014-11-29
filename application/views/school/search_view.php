<script>
$(document).ready(function(){
	var str;
	var href;
	var div;
	var cla;
	var gen;
	
	$(".pages a").click(function(){
		str = $("#search").val();
		div = $("#division").val();
		cla = $("#clas").val();
		gen = $("#gender").val();
		href = $(this).attr('href');
		$.get(href+'?str='+str+'&div='+div+'&cla='+cla+'&gen='+gen,function(result){
				$("#header_div").html(result);
					//console.log(result);
		});
		return false;
	})
});
</script>
<div style="clear:both;">
</div>
<br />
<div id="header_div">
<table id="customers "class="table table-bordered table-striped table-hover">
<tr class="danger">
	<th >No.</th>
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
</div>

<?php 
$roman = array("","I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII");
if(isset($query) && $query != NULL): foreach($query as $row): ?>
	<tr  >
		<?php $id = $row['id']; ?>
		<?php $name = $row['first_name'].' '.$row['last_name']; ?> 
		<td><?php echo $row['id']; ?></td>
		<td><img src="<?php echo ($row["photo"] !='') ? base_url().'uploads/images/'.$row["photo"] : base_url().'images/default.png'; ?> " class="imgStyleList"></td>
		<td><?php echo anchor("display/details/$id",$row['first_name'].' '.$row['last_name']); ?></td>
		<td class="center"><img src="<?php $imgGender = ($row['gender'] == "male")? 'male.png' : 'female.png'; echo base_url().'images/'.$imgGender; ?>" alt="<?php $imgGender = ($row['gender'] == "male")? 'male' : 'female';  ?>" /></td>
		<td><?php $class = $row['class']; echo $roman[$class]; ?></td>
		<td><?php echo $row['division']; ?></td>
		<td><?php echo $row['father_name']; ?></td>
		<td><?php echo $row['mother_name']; ?></td>
		<td><?php echo $row['phone']; ?></td>
		<td><?php echo $row['mobile']; ?></td>		
		<td><?php echo $row['address']; ?> </td>
		<td class="center_edit"><a href="<?php echo base_url();?>index.php/display/delete/<?php echo $id; ?>" onclick="return alfunction()"><img src="<?php echo base_url();?>images/Delete.jpg" width="15" height="15" alt="some_text"></a></td>
		<td class="center_edit"><a href="<?php echo base_url();?>index.php/display/edit/<?php echo $id; ?>"><img src="<?php echo base_url();?>/images/edit.png" width="15" height="15" alt="some_text"></a></td>
	</tr>
	<?php endforeach;
else: echo "<tr ><td colspan='13'><p class='notfound'>NOT FOUND !!!!</p> </td></tr>";
			endif;
		?>
</table>
<div class="pages">
	<ul class="pagination"><?php echo $links; ?></ul>
</div>