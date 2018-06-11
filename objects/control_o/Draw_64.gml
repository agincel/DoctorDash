/// @description Pause Menu
display_set_gui_size(view_wport[0], view_hport[0]);

if (pause == true) {
draw_sprite_ext(screenshot,0,0,0,1,1,0,c_white,1);
draw_sprite(pause_post_it,1,room_width * 0.5,room_height * 0.5);
image_xscale = 1.5;
image_yscale=1.5;
draw_set_font(menu_font);
draw_set_color(c_black);
draw_text(room_width * 0.5 - 100,room_height * 0.5+60,"Continue");
draw_text(room_width * 0.5 - 100,room_height * 0.5 + 160,"Exit");
draw_text(room_width * 0.5 - 100,room_height * 0.5 + 260,"Fullscreen");
	if (move==0) {
		draw_sprite(cursor,1,room_width * 0.5 - 150,room_height * 0.5 + 100);
	}
	else if (move==1) {
		draw_sprite (cursor,1,room_width * 0.5 - 150,room_height * 0.5 +200);
	}
	else if (move==2) {
		draw_sprite (cursor,1,room_width * 0.5 - 150,room_height * 0.5 +300);
	}
	
}

if (end_screen_1 = true) {
	draw_sprite(end_screen,1,room_width*0.5,room_height*0.5);
	draw_sprite(jenn_large,1,115,1020);
	
	draw_set_font(end_font);
	draw_set_color(c_black);
	draw_text(350,260,"Patients Lost:");
	draw_text(800,260,global.death_count);
	draw_text(350,360,"Patients Saved:");
	draw_text(800,360,global.patients_saved);
	
	draw_set_font(menu_font);
	draw_set_color(c_black);
	draw_text(500,150,"End Wave 1");
	
	draw_set_font(menu_font);
	draw_set_color(c_white);
	draw_text(8,20,"Nurse");
	draw_text(8,120,"Jenn");
	draw_text(10,220,"Added!");
	
	draw_set_font(character_font);
	draw_set_color(c_black);
	draw_text_ext(320,460,text_jenn,45,650);
}
else if (end_screen_2 = true) {
	draw_sprite(end_screen_3,1,room_width*0.5,room_height*0.5);
	
	draw_set_font(end_font);
	draw_set_color(c_black);
	draw_text(350,260,"Patients Lost:");
	draw_text(800,260,global.death_count);
	draw_text(350,360,"Patients Saved:");
	draw_text(800,360,global.patients_saved);
	
	draw_set_font(menu_font);
	draw_set_color(c_black);
	draw_text(500,150,"End Wave 2");

	if (katie == true) {
		draw_sprite(katie_large,1,115,1020);
		draw_set_font(menu_font);
		draw_set_color(c_white);
		draw_text(8,20,"Doctor");
		draw_text(8,120,"Katie");
		draw_text(10,220,"Added!");
	
		draw_set_font(character_font);
		draw_set_color(c_black);
		draw_text_ext(320,460,text_katie,45,650);
	}
	if (will == true) {
		draw_sprite(will_large,1,115,1020);
		draw_set_font(menu_font);
		draw_set_color(c_white);
		draw_text(8,20,"Doctor");
		draw_text(8,120,"Will");
		draw_text(10,220,"Added!");
	
		draw_set_font(character_font);
		draw_set_color(c_black);
		draw_text_ext(320,460,text_will,45,650);
	}	
}
else if (end_screen3 = true) {
	draw_sprite(end_screen2,1,room_width*0.5,room_height*0.5);
	
	draw_set_font(end_font);
	draw_set_color(c_black);
	draw_text(350,260,"Patients Lost:");
	draw_text(800,260,global.death_count);
	draw_text(350,360,"Patients Saved:");
	draw_text(800,360,global.patients_saved);
	
	draw_text(350,490,"Total Patients Lost:");
	draw_text(800,490,global.total_patients_lost);
	draw_text(350,590,"Total Patients Saved:");
	draw_text(850,590,global.total_patients_saved);
	
	
	draw_set_font(menu_font);
	draw_set_color(c_black);
	draw_text(500,150,"End Wave 3");
}
	
