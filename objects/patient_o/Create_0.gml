
event_inherited();
type = types.patient;
image_xscale = 0.20;
image_yscale = 0.20;
event_inherited();
image_speed = 1;
frame = 0;
in_bed = false;
patient_in = false;

inhabitedBed = noone;
randomize();
if (global.wave == 0) {
	patient_type = 2;
}
else if (global.wave == 1) {
	patient_type = choose (2,2,2,2,2,2,2,2,1,1); //ADD IN THE ROOM VARIATIONS HERE FOR PERCENTAGES
}
else if (global.wave == 2) {
	show_debug_message("creating patient in wave 2");
	patient_type = choose (2, 2, 2, 1, 1, 2, 0);
}
else if (global.wave == 3) {
	patient_type = choose (2,2,1,1,1,1,0,0,0,0);
}
alarm[1] = 1;

closest_bed = instance_nearest(x, y, Bed_O);

//This is so the patients can't adhere to the doctors code
by_bed=true;


death_countdown = 5;
death_speed = 0.5;
death_capacity = 140;
death_timer = 0;

being_healed = false;
healing_paused = false;

heal_countdown = 6;
heal_capacity = 45;
heal_timer = 0;
heal_speed = 0.5;