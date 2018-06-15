/// @description Insert description here
if (menu) {
	if (keyboard_check_pressed(vk_up) && move > 0) {
		move--;
	}
	else if (keyboard_check_pressed(vk_down) && move < array_length_1d(menu_options) - 1) {
		move++;
	}
}
if (character) {
	if (keyboard_check_pressed(vk_left) && move > 0) {
		move--;
	}
	else if (keyboard_check_pressed(vk_right) && move < array_length_1d(c_text) - 1) {
		move++;
	}
}
if (instructions) {
	if (keyboard_check_pressed(vk_left) && move > 0) {
		move--;
	}
	else if (keyboard_check_pressed(vk_right) && move < 3) { //number of instructions pages
		move++;
	}
}


if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	event_user(0);	
}


if (keyboard_check_pressed(vk_escape) || mouse_check_button(mb_left)) {
	if (instructions || character) {
		move = instructions ? 4 : 1;
		instructions = false;
		character = false;
		menu = true;
	}
}

if (keyboard_check_pressed(ord("M"))) {
	audio_sound_gain(global.bgm, 0, 30);
}	