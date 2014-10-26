// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

 //select storey
//var paxInput = document.getElementById(); //select pax
//var displayRoomTaskHolder = document.getElementById("available-rooms"); //room display
 
//Select rooms by levels
var selectRoom = function() {
	console.log(storeyInput);
	var val = $(this).val(); // returns the id 
	var hideroom = ('.room')	
		$('.room').hide();
	$('.room[data-storey-id=' + val + ']').show();
	//When level is selected
	//Show rooms in the level by storey_id
	//Hide rooms in other levels
}


//Sort rooms by pax
var sortRoom = function() {
	//When pax is selected
	//Sort rooms by pax at top
}

//Book room
var bookRoom = function() {
	//When button "book" is pressed
	//Display "You have booked ('.room'). Enter by:
	//Display countdown timer from 5mins
}


