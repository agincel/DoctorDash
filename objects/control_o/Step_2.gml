if (mouse_check_button(mb_left)){
    if (instance_exists(drag_object) && 
		(drag_object.in_bed == false || drag_object.by_bed == false)){
		 drag_object.x = mouse_x + xrelative;
			drag_object.y = mouse_y + yrelative;
			}
}
/*else if (instance_exists(drag_object) && drag_object.by_bed == false)
    {
        drag_object.x = mouse_x + xrelative;
        drag_object.y = mouse_y + yrelative;
    }
*/
