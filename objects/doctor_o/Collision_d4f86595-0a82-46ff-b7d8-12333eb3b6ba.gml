/// @description 2nd Doctor Slot
if (mouse_check_button_released(mb_left) && other.slot2 == false && 
    point_in_rectangle(mouse_x, mouse_y,other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom)) {
		other.my_bed.doctor_occupancy = other.my_bed.doctor_occupancy + 2;
		x = other.x;
		y = other.y-other.sprite_height*0.9;
		other.slot2 = true;
		depth = 2;
		other.sprite_index=slotl_s;
		slotted = true;
}
else if (slotted == false && depth != 2 && mouse_check_button_released(mb_left) && other.slot2 == true && 
    point_in_rectangle(mouse_x, mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom) &&
	!point_in_rectangle(mouse_x, mouse_y,patient_o.bbox_left,patient_o.bbox_top,patient_o.bbox_right,patient_o.bbox_bottom)) {
	x = 550;
	y = 500;
} 
if (other.slot2 == true && mouse_check_button_pressed(mb_left) && other.slot2 == true && 
	point_in_rectangle(mouse_x, mouse_y,bbox_left,bbox_top, bbox_right, bbox_bottom)) {
		other.my_bed.doctor_occupancy = other.my_bed.doctor_occupancy - 2;
		other.slot2 = false;
		depth = 1;
		other.sprite_index=slot1_s;
		slotted = false;
}