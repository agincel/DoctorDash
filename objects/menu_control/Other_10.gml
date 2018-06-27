/// @description Menu Confirm

if (menu) {
	if (move == 0) {
		global.wave = 0;
		room_goto_next();
	}
	else if (move==1) {
	character = true;
	menu = false;
	move = 0;
	}
	else if (move==2) {
		game_end();
	}
	else if (move==3) {
		if (global.fullscreen == false) {
			window_set_fullscreen(true);
			global.fullscreen = true;
		}
		else {
			window_set_fullscreen(false);
			global.fullscreen = false;
		}
	}
	else if (move == 4) {
		menu = false;
		instructions = true;
		move = 0;
	}
} else {
	move = instructions ? 4 : 1;
	instructions = false;
	character = false;
	menu = true;
}