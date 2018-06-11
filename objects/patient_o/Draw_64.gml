/// @description Insert description here
display_set_gui_size(view_wport[0], view_hport[0]);
if (being_healed == true) {
	draw_sprite(Clock_S,frame,closest_bed.x,y-130);
}
/*
if (in_bed == true) {
draw_set_font(font_base);
draw_set_color(c_black);
if (being_healed == true) {
draw_text(x, y + 250, "true");
}
else {
draw_text(x,y+250,"false");
}
}