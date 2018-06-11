/// @description Insert description here
if (occupancy == 1) {
closest_patient = instance_position(x,y-12,patient_o);
if  (closest_patient.patient_type == 0) {
	if (total_occupancy >=3) {
		closest_patient.being_healed = true;
	}
	else if (1 <= total_occupancy < 3) {
		closest_patient.healing_paused = true;
	}
	else if (total_occupancy==0) {
		closest_patient.patient_healing = false;
		closest_patient.healing_paused=false;
	}	
}
else if  (closest_patient.patient_type == 1) {
	if (total_occupancy >=2) {
		closest_patient.being_healed = true;
	}
	else if (total_occupancy == 1) {
		closest_patient.healing_paused = true;
	}
	else if (total_occupancy == 0){
		closest_patient.patient_healing = false;
		closest_patient.healing_paused=false;
	}
}
else if  (closest_patient.patient_type == 2) {
	if (total_occupancy >= 1) {
		closest_patient.being_healed = true;
	}
	else if (total_occupancy == 0){
		closest_patient.patient_healing = false;
		closest_patient.healing_paused=false;
	}
}
}