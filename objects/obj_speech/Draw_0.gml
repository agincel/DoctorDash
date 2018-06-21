/// @description Draw the textbox, the current displayString, and any portraits/additional needed text

if (target > 0) {
	x = target.x;
	y = target.y - (sprite_get_height(target.sprite_index) * target.image_yscale) / 2 - 22;
}


draw_self(); //draw the text box background sprite

//let's get the starting x and y for the text
//hardcode at 12, 12

var margin_side = 21;
var margin_top = 16;
var startX = bbox_left + margin_side;
var startY = bbox_top + margin_top;

draw_set_font(fnt_speech);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(startX, startY, displayString, 12, sprite_get_width(sprite_index) - (margin_side * 2));