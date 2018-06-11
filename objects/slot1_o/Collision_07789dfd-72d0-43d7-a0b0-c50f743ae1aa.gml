/// @description Nuse Collision
if (mouse_check_button_released(mb_left) && slot1 == false && 
    point_in_rectangle(mouse_x, mouse_y,bbox_left, bbox_top, bbox_right, bbox_bottom)) {
		my_bed.nurse_occupancy = my_bed.nurse_occupancy + 1;
		other.x = x;
		other.y = y-sprite_height*0.9;
		slot1 = true;
		other.depth = 2;
		sprite_index=slotl_s;
		other.slotted_n=true;
}
else if (other.slotted_n == false && other.depth != 2 && mouse_check_button_released(mb_left) && slot1 == true && 
    point_in_rectangle(mouse_x, mouse_y,other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom) &&
	!point_in_rectangle(mouse_x, mouse_y,patient_o.bbox_left,patient_o.bbox_top,patient_o.bbox_right,patient_o.bbox_bottom)) {
	other.x = 550;
	other.y = 500;
} 
if (other.slotted_n == true && mouse_check_button_pressed(mb_left) && slot1 == true && 
	point_in_rectangle(mouse_x, mouse_y,other.bbox_left,other.bbox_top, other.bbox_right, other.bbox_bottom)) {
		my_bed.nurse_occupancy = my_bed.nurse_occupancy - 1;
		slot1 = false;
		other.depth = 1;
		sprite_index=slot1_s;
		other.slotted_n = false;
}