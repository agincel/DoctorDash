/// @description Creation
if (nurse_id==1){
	sprite_index=alistair_s;
}
else if (nurse_id==2){
	sprite_index=monica_s;
}
else if (nurse_id == 3) {
	sprite_index = jenn_s;
}

image_xscale = 0.40;
image_yscale = 0.40;

in_bed = false;
event_inherited();

slotted_n = false;