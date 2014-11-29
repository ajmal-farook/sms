function alfunction(){
	var a = confirm("are you sure to delete ?");
	if(a == false){
		return false;
	}
}
function sub(){
	alert("data entered successfully !!!");
}
function save(){
	alert("fee structure entered successfully !!!");
}
$(document).ready(function(){
	var char;
	$("#search").keyup(function(){
		char = $("#search").val();
		var x=$("#clas").val();
		var y=$("#division").val();
		var z=$("#gender").val();
		$.get("http://authenticrealm/sms/index.php/display/search?str="+char+"&cla="+x+"&div="+y+"&gen="+z,function(result){
					$("#header_div").html(result);
		});
	}); 
	
	$(".pages a").click(function(){
		char = $("#search").val();
		href = $(this).attr('href');
		$.get(href,function(result){
			$("#header_div").html(result);
		});
		return false;
	})
});

function changeFunction(){
	var char =$("#search").val();
	var x=$("#clas").val();
	var y=$("#division").val();
	var z=$("#gender").val();
	$.get("http://authenticrealm/sms/index.php/display/search?str="+char+"&cla="+x+"&div="+y+"&gen="+z,function(result){
			$("#header_div").html(result);
		});
}