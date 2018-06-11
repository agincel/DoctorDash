image_xscale = 0.20;
image_yscale = 0.20;
event_inherited();
image_speed = 1;
frame = 0;
in_bed = false;
patient_in = false;

if (global.wave == 1) {
patient_type = choose (2,2,2,2,2,2,2,2,1,1); //ADD IN THE ROOM VARIATIONS HERE FOR PERCENTAGES
}
else if (global.wave == 2) {
	patient_type = choose (2,2,2,0,0,1,1,1,1,1);
}
else if (global.wave == 3) {
	patient_type = choose (2,2,1,1,1,1,0,0,0,0);
}

// Patient Stats
if (patient_type == 0){
sprite_index = choose(S_Patient_1,S_Patient_2,S_Patient_3,S_Patient_4,S_Patient_5,S_patient_6,S_patient_7,S_Patient);
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
}
else if (patient_type == 1) {
sprite_index = choose(O_Patient_1,O_Patient_2,O_Patient_3,O_Patient_4,O_Patient_5,O_Patient_6,O_Patient_7,O_Patient);
death_countdown = 5;
death_speed = 0.5;
death_capacity = 160;
death_timer = 0;

being_healed = false;
healing_paused = false;

heal_countdown = 6;
heal_capacity = 35;
heal_timer = 0;
heal_speed = 0.5;
}
else if (patient_type == 2) {
sprite_index = choose(M_Patient_1,M_Patient_2,M_Patient_3,M_Patient_4,M_Patient_5,M_Patient_6,M_Patient_7,M_Patient_8,M_Patient);
death_countdown = 5;
death_speed = 0.5;
death_capacity = 180;
death_timer = 0;

being_healed = false;
healing_paused = false;

heal_countdown = 6;
heal_capacity = 20;
heal_timer = 0;
heal_speed = 0.5;
}


closest_bed = instance_nearest(x, y, Bed_O);

//This is so the patients can't adhere to the doctors code
by_bed=true;