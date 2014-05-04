$(function(){
	
	// whenever country select box changes this will activate.
	
	$('#country').change(function(){
	
		var value = $('#country').val();
	
		$.ajax({
		
			type : 'get',
			url:'loadState.cfc?method=state_load',
			data : { 'countryId':value }	// value passed as argument to CFC Function.
			
		}).success(function(response){
		
			$('#state').html(response);	//response as html for state drop down.
			
		}).error(function(){
		
			alert('Error Occured');
			
		});
		
	});
	
	
});
