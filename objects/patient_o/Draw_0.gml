/// @description Insert description here
event_inherited();
var str = "";
if (patient_type == 2) {
	str += "Minor";
	if (death_countdown == 4) {
		image_blend = c_ltgray;
	}
	else if (death_countdown == 3) {
		image_blend = c_gray;
	}
	else if (death_countdown == 2) {
		image_blend = c_dkgray;
	}
	else if (death_countdown == 1) {
		image_blend = c_black;
	}
}
if (patient_type == 1){
	str += "Moderate";
	if (death_countdown == 4) {
		image_blend = make_color_rgb(132,179,222);
	}
	else if (death_countdown == 3) {
		image_blend = make_color_rgb(38,128,210);
	}
	else if (death_countdown == 2) {
		image_blend = make_color_rgb(0,51,153);
	}
	else if (death_countdown == 1) {
		image_blend = make_color_rgb(25,25,112);
	}
}
if (patient_type == 0){
	str += "Severe";
	if (death_countdown == 4) {
		image_blend = make_color_hsv(0, 80, 200);
	}
	else if (death_countdown == 3) {
		image_blend = make_color_hsv(0, 140, 150);

	}
	else if (death_countdown == 2) {
		image_blend = make_color_hsv(0, 230, 110);
	}
	else if (death_countdown == 1) {
		image_blend = make_color_hsv(0, 255, 70);
	}
}
if (sprite_index)
	draw_self();
draw_set_font(fnt_injury_type);
draw_set_halign(fa_center);
draw_text_shadow(x, y + 80, str, c_white, c_black, 1);

if (being_healed) {
	draw_sprite(Clock_S,frame,inhabitedBed.x,y-130);	
}
