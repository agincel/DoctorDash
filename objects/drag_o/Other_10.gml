/// @description Get grabbed

isHeld = true;

if (type == types.patient) {
	if (inhabitedBed) {
		/*
		//uncomment this to enable removal from bed
		inhabitedBed.occupant = noone;
		being_healed = false;
		healing_paused = false;
		inhabitedBed = noone;
		*/
		isHeld = false; //remove if you want removal from bed
	}
} else {
	if (inhabitedSlot) {
		inhabitedSlot.my_doctor = noone;
		inhabitedSlot.my_bed.slot[inhabitedSlot.mySlot] = noone;
	}
}