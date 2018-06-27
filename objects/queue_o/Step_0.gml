/// @description 

if (spawned >= spawnQuantity[global.wave]){
	active = false;
}


if (active) {
	if (spawnTime >= timeToSpawn[global.wave] && timeToSpawn[global.wave] > 0) {
		event_user(0);
	} else {
		spawnTime++;	
	}
}

if (keyboard_check_pressed(ord("S")) && (room == Hospital_Tutorial || keyboard_check(ord("K")))) {
	global.total = spawnQuantity[global.wave];
	with (obj_textbox) {
		instance_destroy();	
	}
}

if (keyboard_check_pressed(ord("T"))) {
	load_conversation("test.json");
}

//End of Game Shit
if (global.total == spawnQuantity[global.wave]) {
	control_o.end_screen_show[global.wave] = true;
	active = false;
	
	instance_deactivate_all(true);
	instance_activate_object(control_o);
	if (room == Hospital_Tutorial)
		control_o.alarm[3] = 50;
	global.total = 0;
	global.wave++;
	if (global.wave > 3)
		global.wave = 3;
	audio_play_sound(Marker_Scribble,1,false);
}
