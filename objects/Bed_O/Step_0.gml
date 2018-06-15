/// @description Insert description here

var total_occupancy = 0; //doctors worth 2, nurses worth 1.
for (var i = 0; i < 2; i++) {
	if (slot[i] != noone) {
		if (slot[i].type == types.doctor)
			total_occupancy += 2;
		else if (slot[i].type == types.nurse)
			total_occupancy += 1;
	}
}


//If we have an occupant, heal them/pause death based on level
if (occupant != noone) {
	if (occupant.patient_type == 0) { //if severe, need at least doc + nurse
		if (total_occupancy >= 3) {
			occupant.being_healed = true;
		}
		else if (total_occupancy >= 1) {
			occupant.healing_paused = true;
		}
		else if (total_occupancy <= 0) {
			occupant.patient_healing = false;
			occupant.healing_paused = false;
		}		
	} else if (occupant.patient_type == 1) { //if moderate, need at least doc or 2 nurse
		if (total_occupancy >= 2) {
			occupant.being_healed = true;
		}
		else if (total_occupancy == 1) {
			occupant.healing_paused = true;
		}
		else if (total_occupancy == 0){
			occupant.patient_healing = false;
			occupant.healing_paused=false;
		}
	} else { //if minor, need nurse or doctor
		if (total_occupancy >= 1) {
			occupant.being_healed = true;
		}
		else if (total_occupancy == 0){
			occupant.patient_healing = false;
			occupant.healing_paused = false;
		}	
	}
}