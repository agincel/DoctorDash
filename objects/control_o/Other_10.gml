/// @description Next
if (end_screen_show[1]) {
	end_screen_1 = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(Hospital_wave_2);
}
if (end_screen_show[2]) {
	katie = false;
	will = true;
}

if (will == true && next == false) {
	will = false;
	next = true;
}
if (nexto == true) {
	end_screen_show[2] = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(Hospital_wave_3);
}

if (end_screen_show[3]) {
	end_screen_show[3] = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(Title_Screen);
}