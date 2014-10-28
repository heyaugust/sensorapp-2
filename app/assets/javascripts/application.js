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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

 //select storey
//var paxInput = document.getElementById(); //select pax
//var displayRoomTaskHolder = document.getElementById("available-rooms"); //room display
var timer;
var countdown;
var countdown_number;
var timeleft;


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

//Countdown timer after room booked
var countdown = function(minutes) {
	var seconds = 5;
	var mins = minutes;
	function tick() {
		var counter = document.getElementById("timer");
		var current_minutes = mins - 1;
		seconds--;
			counter.innerHTML = "The booking will expire in: " + current_minutes.toString() + ":"+ (seconds < 10 ? "0" : "") + String(seconds);;
			if( seconds > 0 ) {
	            setTimeout(tick, 1000);
	        } else {
	            if(mins > 1){
	               // countdown(mins-1);   never reach “00″ issue solved:Contributed by Victor Streithorst    
	               setTimeout(function () { countdown(mins - 1); }, 1000);     
	            } else {
	            	roomExpire();
	            }
        	}
    	}
   		tick();
	}


//Alert room booking expiry
var roomExpire = function() {
	var r = confirm("Your booking has expired. Please try again.");
	if (r == true) {
   		window.location.reload(); 
	} else {
	}
}
//Sort rooms by pax
var sortRoom = function() {
	//When pax is selected
	//Sort rooms by pax at top
}

//Book room
var bookRoom = function(clicked_id) {
	$('.room').hide();
	document.getElementById("available-rooms").innerHTML = "You have booked room: "+clicked_id;
	countdown(1);
}



