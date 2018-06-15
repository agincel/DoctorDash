
//pause menu shit
if (pause == true){
	
	if (!sprite_exists(screenshot)) {
		screenshot = sprite_create_from_surface(application_surface,0,0,1980,1080,0,0,0,0); 
	}
	instance_deactivate_all(true);
	if (keyboard_check_pressed(vk_up) && move != 0) {
		move--;
	}
	else if (keyboard_check_pressed(vk_down) && move != 2){
		move++;
	}

	if (keyboard_check_pressed(vk_enter) && move == 0){
		pause = false;
		if (sprite_exists(screenshot)) {
			sprite_delete(screenshot);
		}
		instance_activate_all();
	}
	else if (keyboard_check_pressed(vk_enter) && move == 1){
		room_goto(Title_Screen);
	}
	else if (keyboard_check_pressed(vk_enter) && move == 2) {
		if (global.fullscreen == false) {
			window_set_fullscreen(true);
			global.fullscreen = true;
		}
		else {
			window_set_fullscreen(false);
			global.fullscreen = false;
		}
	}
}

//End of Game Shit
if (global.wave == 1 && global.total == 20) {
	instance_deactivate_all(true);
	global.total = 0;
	global.wave = 2;
	end_screen_1 = true;
	audio_play_sound(Marker_Scribble,1,false);
}

else if (global.wave == 2 && global.total == 30) {
	instance_deactivate_all(true);
	global.total = 0;
	global.wave = 2;
	end_screen_2 = true;
	audio_play_sound(Marker_Scribble,1,false);
}
else if (global.wave == 3 && global.total == 50) {
	instance_deactivate_all(true);
	global.total = 0;
	global.wave = 3;
	end_screen3 = true;
	audio_play_sound(Marker_Scribble,1,false);
}

if (end_screen_2 == true & will == true && katie == false && keyboard_check_pressed(vk_enter)) {
	nexto = true;
}