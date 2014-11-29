<?php 
	$attr = array('class' => 'form-horizontal,form-group');
	echo form_open('display/fee', $attr); 
?>
<div class="col-md-10 col-md-offset-1 container main_container ">
<h2  class="row">MONTHLY FEE EDIT FORM </h2>
<div class="col-md-4 ">
	<table class="table table-bordered feestable">
		<thead>
			<tr class="danger">
				<th style="padding-top: 15px; padding-bottom: 10px;" >CLASS </th>
				<th style="padding-left: 30px;">MONTHLY FEES</th>
			</tr>
		</thead>
		<tbody>
		
			<tr>			
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">I</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee1" value="<?php echo $fee[0]['fee']; ?>">
						</div>
					</td>
				
			</tr>
			
			<tr>	
					<td>
						<label for="inputPassword3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 20px;">II</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee2" value="<?php echo $fee[1]['fee']; ?>" >
						</div>
					</td>
			</tr>

			<tr>
					<td>
						<label for="inputPassword3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 20px;">III</label>
					</td>
					<td>
						<div class="col-md-12">
						  <input type="text" class="form-control"  name="fee3" value="<?php echo $fee[2]['fee']; ?>"  >
						</div>
					</td>
			</tr>
			
			<tr>
					<td>
						<label for="inputPassword3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 20px;">IV</label>
					</td>
					<td>
						<div class="col-md-12">
						  <input type="text" class="form-control" name="fee4" value="<?php echo $fee[3]['fee']; ?>" >
						</div>
					</td>
			</tr>
			
			<tr>
					<td>
						<label for="inputPassword3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 20px;">V</label>
					</td>
					<td>
						<div class="col-md-12">
						  <input type="text" class="form-control" name="fee5"  value="<?php echo $fee[4]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">VI</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee6" value="<?php echo $fee[5]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">VII</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee7" value="<?php echo $fee[6]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">VIII</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee8" value="<?php echo $fee[7]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">IX</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee9" value="<?php echo $fee[8]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">X</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee10" value="<?php echo $fee[9]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">XI</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee11" value="<?php echo $fee[10]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td>
						<label for="inputEmail3" class="col-sm-2 control-label" style="padding-top: 12px; font-size: 18px;">XII</label>
					</td>
					<td>
						<div class="col-md-12">
							<input type="text" class="form-control" name="fee12" value="<?php echo $fee[11]['fee']; ?>" >
						</div>
					</td>
			</tr>
			<tr>
					<td colspan="2" style="padding-top: 8px; border-right-width: 1px; padding-right: 0px; padding-bottom: 8px;">
						<div class="col-sm-offset-4 col-md-10 ">
						  <button type="submit" class="btn btn-primary btn-lg" >Save</button>
						</div>
					</td>
			</tr>
		</tbody>
	</table>
	</form>
	</div>
</div>
<?php //endforeach; ?>
