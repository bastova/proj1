// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(	
	function() {
	$('.title_1').bind("mouseover", function(){
		var color  = $(this).css("background-color");
		var wdth  = $(this).css("width");
		var shadow  = $(this).css("box-shadow");

		$(this).css("background", "#555");
		$(this).css("width", "345px");
		$(this).css("box-shadow", "0px 3px 5px rgba(0,0,0,0.5) inset");

		$(this).bind("mouseout", function(){
			$(this).css("background", color);
			$(this).css("width", wdth);
			$(this).css("box-shadow", shadow);
		});   
	});   
});