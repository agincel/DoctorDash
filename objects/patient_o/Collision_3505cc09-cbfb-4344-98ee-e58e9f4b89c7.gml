closest_bed = instance_nearest(x,y-12, Bed_O);

if (mouse_check_button_released(mb_left) && closest_bed.occupancy!=1){
	closest_bed.occupancy = 1;
	x = closest_bed.x;
	y = closest_bed.y+closest_bed.sprite_height * 0.1;
	in_bed = true;
	depth=3;
}

		