<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

	<title>School Management System</title>
	
	<link rel="stylesheet" href="<?php echo base_url();?>css/images/icon.png">
	<link rel="stylesheet" href="<?php echo base_url();?>css/jquery-ui.css">
	<script src="<?php echo base_url();?>js/jquery.min.js"></script>
	<script src="<?php echo base_url();?>js/jquery-ui.js"></script>
	<script src="<?php echo base_url();?>js/bootstrap.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/search.js"></script>

	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/custom.css" />

	<script type="text/javaScript">
		 $(document).ready(function(){
		 
			$(".dropdown-toggle").click(function(){
				  $(".navbar-nav li").removeClass('active');
				  $(this).addClass('active');
			});
		 });
	</script>
	
</head>

<body  class="margin ">
    <div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="#">SCHOOL NAME</a>
			</div>
			<div class="collapse navbar-collapse">
			  <ul class="nav navbar-nav">
				<li <?php echo($this->uri->segment(1) == 'student' ? 'class="active"' : ''); ?>><a href="<?php echo base_url();?>index.php/student/index">ADD STUDENT	</a></li>
				<li <?php echo($this->uri->segment(1) == 'display' && $this->uri->segment(2) == 'index' ? 'class="active"' : ''); ?>><a href="<?php echo base_url();?>index.php/display/index">STUDENT DETAILS</a> </li>
				<li <?php echo($this->uri->segment(2) == 'fee' || $this->uri->segment(2) == 'managefee' || $this->uri->segment(2) == 'manageOtherFee1' ? 'class="active"' : ''); ?> ><a href="<?php echo base_url();?>index.php/display/dropdown" class="dropdown-toggle" data-toggle="dropdown"> FEE MANAGEMENT<b class="caret"></b></a>
					  <ul class="dropdown-menu">
						<li><a href="<?php echo base_url();?>index.php/display/managefee">Monthly Fee</a></li>
						<li class="divider"></li>
						<li><a href="<?php echo base_url();?>index.php/display/fee">Monthly Fee Details</a></li>
						<li class="divider"></li>
						<li><a href="<?php echo base_url();?>index.php/display/manageOtherFee1">Other Fees</a></li>
					  </ul>
					</li>
			  </ul>
			  </ul>
			</div>
		</div>
    </div>
