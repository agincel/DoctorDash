/// @description Insert description here
if (end_screen_1 == true) {
	end_screen_1 = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(asset_get_index("Hospital_wave_2"));
}
if (end_screen_2 == true) {
	katie = false;
	will = true;
}

if (will == true && next == false) {
	will = false;
	next = true;
}
if (nexto == true) {
	end_screen_2 = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(asset_get_index("Hospital_wave_3"));
}

if (end_screen3 == true) {
	end_screen3 = false;
	global.death_count = 0;
	global.patients_saved = 0;
	room_goto(asset_get_index("Title_Screen"));
}