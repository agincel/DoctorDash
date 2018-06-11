/*
if (mouse_check_button_released(mb_left) && other.slot1 == false && 
    point_in_rectangle(mouse_x, mouse_y,other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom)) {
		other.my_bed.doctor_occupancy = other.my_bed.doctor_occupancy + 2;
		x = other.x;
		y = other.y;
		other.slot1 = true;
		depth = 2;
}
else if (depth != 2 && mouse_check_button_released(mb_left) && other.slot1 == true && 
    point_in_rectangle(mouse_x, mouse_y,other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom)) {
	x = mouse_x;
	y = other.y + 210;
} 
if (other.slot1 == true && mouse_check_button_pressed(mb_left) && other.slot1 == true && 
	point_in_rectangle(mouse_x, mouse_y,bbox_left,bbox_top, bbox_right, bbox_bottom)) {
		other.my_bed.doctor_occupancy = other.my_bed.doctor_occupancy - 2;
		other.slot1 = false;
		depth = 0;
}
*/
//point_in_rectangle(mouse_x, mouse_y,closest_slot2.bbox_left, bbox_top, bbox_right,bbox_bottom)