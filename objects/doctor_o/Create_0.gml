
event_inherited();
type = types.doctor;

if (doctor_id==1){
	sprite_index=luke_s;
}
else if (doctor_id==2){
	sprite_index=sam_s;
}
else if (doctor_id==3){
	sprite_index=katie_s;
}
else if (doctor_id == 4) {
	sprite_index = will_s;
}

image_xscale = 0.40;
image_yscale = 0.40;

in_bed = false;
by_bed = false;

inhabitedSlot = noone;

slotted = false;