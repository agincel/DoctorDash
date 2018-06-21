/// @description Insert description here
// You can write your code in this editor
if (isHeld) {
	x = mouse_x;
	y = mouse_y;
	layer = layer_get_id("layer_patients");	
	if (mouse_check_button_released(mb_left)) {
		isHeld = false;
		
		if (type == types.patient) {
			var bed = instance_place(x, y, Bed_O);
			if (bed && bed.occupant == noone) {
				bed.occupant = id;
				x = bed.x;
				y = bed.y;
				inhabitedBed = bed;
			}
		} else {
			var slot = instance_place(x, y, slot_o);
			if (slot && slot.my_doctor == noone) {
				slot.my_doctor = id;
				x = slot.x;
				y = slot.y - (sprite_get_height(sprite_index) * 0.175); //maybe todo
				
				slot.my_bed.slot[slot.mySlot] = id;
				inhabitedSlot = slot;
			}
		}
	}
}

