
var grabbed = noone;

with (drag_o) {
	if (checkGrab && (grabbed == noone || y > grabbed.y)) {
			grabbed = id;
	}
	checkGrab = false;
}

if (grabbed != noone) {
	with (grabbed) {
		event_user(0);	
	}
}
