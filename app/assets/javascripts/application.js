// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){

	var $current_user_status = $('meta:last-of-type').data('name');
	var $height;
	
	if($current_user_status === 'NilClass'){
		(function signupNotifier(){
			$height = $(window).height() / 2;

			setTimeout(function(){ 
				$(".bs-example-modal-sm").modal({keyboard: true, backdrop: 'static'});
				$("div.modal-content").css({'margin': ""+$height+"px auto"});
			},5000);

		})();
	}

	$('.disclaimer').on('click',function(){
		alert("This site is for educational purposes only.");
	})
});

