/// @description Timing and percentages

//IGNORE THIS OBJECT

if (patient_occupancy == 0) {
	if (spawncounter < 500) {
	spawncounter = spawncounter + 1;
	}
	else  if (spawncounter == 500) {
			patient_created = instance_create_layer(x,y-12,"layer_patients",patient_o);
			spawncounter = 0;
			global.stretcher_count++;
	}
}