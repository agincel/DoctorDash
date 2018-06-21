/// @description Draw the textbox, the current displayString, and any portraits/additional needed text

draw_self(); //draw the text box background sprite

//let's get the starting x and y for the text
//hardcode at 12, 12

var margin_side = 70;
var margin_top = 65;
var startX = bbox_left + margin_side;
var startY = bbox_top + margin_top;

draw_set_font(character_font);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(startX, startY, displayString, 28, sprite_get_width(sprite_index) - (margin_side * 2));
name = !is_undefined(a.name) ? a.name : name;

if (!is_undefined(a.name) && a.name != "-1" && a.name != -1 && !(textComplete && a.type == "choice" && array_length_1d(arr) == 1)) {
	//draw name
	var cX = bbox_right - sprite_get_width(spr_name_box) / 2 - 75;
	if (a.side == "right") {
		cX = bbox_left + sprite_get_width(spr_name_box) / 2 + 75;	
	}
	draw_sprite(spr_name_box, 0, cX, bbox_top);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(cX, bbox_top - sprite_get_height(spr_name_box) / 2, a.name);
	draw_set_valign(fa_top);
} else if (!(textComplete && a.type == "choice" && array_length_1d(arr) == 1) && a.name != "-1" && a.name != -1) {
	draw_sprite(spr_name_box, 0, bbox_right - sprite_get_width(spr_name_box) / 2, bbox_top);
}


portrait = asset_get_index(!is_undefined(a.portrait) ? a.portrait : "");

if (portrait != -1) {
	//draw portrait
	if (a.side == "left") {
		draw_sprite(portrait, 0, bbox_left + (sprite_get_width(portrait) / 2), bbox_top);	
	} else if (a.side == "right") {
		draw_sprite_ext(portrait, 0, bbox_right - (sprite_get_width(portrait) / 2) - 75, bbox_top, -1, 1, 0, c_white, 1);	
	} else {
		draw_sprite(portrait, 0, x, bbox_top);	
	}
}


if (textComplete) {
	choiceLockout -= 1;
	animCurrent += animSpeed;
	draw_sprite(spr_textbox_next, animCurrent, bbox_right - margin_side, bbox_bottom - margin_top);
}


#region Choice selection
if (textComplete && a.type == "yesno" && array_length_1d(arr) == 1)  {
	//draw our yes/no prompt
	
	//top left, for now
	draw_sprite(spr_yesno_box, 0, bbox_right, bbox_top - (sprite_get_height(spr_yesno_box) / 2));
	draw_set_font(fnt_text_box_choices);
	var s = "Yes <\nNo";
	if (selected == 0) {
		s = "Yes\nNo <";
	}
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_text(bbox_right - (sprite_get_width(spr_yesno_box) * .175), bbox_top - (sprite_get_height(spr_yesno_box) * .85) + 6, s);
} else if (textComplete && a.type == "choice" && array_length_1d(arr) == 1) {
	//draw our dialog options
	
	//gonna hardcode up to 4, oops
	draw_set_font(fnt_text_box_choices);
	var vertical_space = 48;
	draw_set_halign(fa_left);
	if (selectedMax >= 1) {
		var s = ds_list_find_value(a.choices, 0);
		if (selected == 0)
			s = ">" + s + "<";
		draw_text_shadow(bbox_left + margin_side, bbox_top - (vertical_space * 2), s, 2, c_white, c_black);
	}
	
	if (selectedMax >= 2) {
		var s = ds_list_find_value(a.choices, 1);
		if (selected == 1)
			s = ">" + s + "<";
		draw_text_shadow(bbox_left + margin_side, bbox_top - (vertical_space * 1), s, 2, c_white, c_black);
	}
	
	if (selectedMax >= 3) {
		var s = ds_list_find_value(a.choices, 2);
		if (selected == 2)
			s = ">" + s + "<";
		draw_set_halign(fa_right);
		draw_text_shadow(bbox_right - margin_side, bbox_top - (vertical_space * 2), s, 2, c_white, c_black);
	}
	
	if (selectedMax >= 4) {
		var s = ds_list_find_value(a.choices, 3);
		if (selected == 3)
			s = ">" + s + "<";
		draw_set_halign(fa_right);
		draw_text_shadow(bbox_right - margin_side, bbox_top - (vertical_space * 1), s, 2, c_white, c_black);		
	}
}	
#endregion