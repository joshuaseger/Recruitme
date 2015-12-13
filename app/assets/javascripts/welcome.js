

$(document).ready(function(){
	console.log("DOM Loaded");


	//Close popup on x-icon clicked.
	$('#x-icon').click(function() {
		$('.container-popup').css('display', 'none');
	});

	//Show sign up popup
	$('#nav-sign-up').click(function(){
		$('.container-popup').css('display', 'block');
	});
});

