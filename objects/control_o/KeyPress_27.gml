/// @description Pause Menu bless my soul
if (end_screen_1 == false || end_screen_2 == false || end_screen3 == false) {
	if (pause == false) {
	pause = true;
	}
	else {
	instance_activate_all();
	if (sprite_exists(screenshot)) {
		sprite_delete(screenshot);
	}
	pause = false;
	}
}