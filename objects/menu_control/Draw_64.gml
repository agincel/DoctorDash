/// @description Insert description here
if (menu) {
	display_set_gui_size(view_wport[0], view_hport[0]);
	draw_set_font(fixed_menufont);
	draw_set_color(c_black);
	for (var i = 0; i < array_length_1d(menu_options); i++) {
		var str = menu_options[i];
		if (i == 3) {
			if (settingIndex == 0) {
				str += "Fullscreen >: " + (global.fullscreen ? "On" : "Off");
			} else if (settingIndex == 1) {
				str += "Labels >: " + (global.label ? "On" : "Off");
			}
		}
		draw_text(500, 580 + (80 * i), str);	
	}

	draw_sprite(cursor, 1, 450, 600 + (82 * move));
	
	draw_set_font(character_font);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(6, room_height - 42, credits_text);
	draw_set_valign(fa_top);
}
	
if (character) {
	display_set_gui_size(view_wport[0], view_hport[0]);
	draw_set_font(character_font);
	draw_set_color(c_black);
	draw_sprite(screen_darken,1,0,0);
	
	for (var i = 0; i < 4; i++) {
		var c = (move == i) ? c_white : c_dkgray;
		draw_sprite_ext(c_sprites[i], 1, room_width * (0.2 + (0.2 * i)), 900, 1, 1, 0, c, 1);
	}
	draw_sprite(textbox, 1, 70, 770);
	draw_text_ext(76, 790, c_text[move], 45, 1800);
}

if (instructions) {
	draw_sprite(asset_get_index("Clipboard_" + string(move + 1) + "_s"), 1, room_width * 0.5, room_height * 0.5);
}
	
