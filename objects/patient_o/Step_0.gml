if (death_countdown <= 0){
	instance_destroy();
}
if (heal_countdown <= 0) {
	instance_destroy();
}
if (in_bed == true && instance_position(closest_bed.x,closest_bed.y+closest_bed.sprite_height * 0.1,closest_bed)) {
		if (being_healed == false && healing_paused == false) {
			death_speed = 0.5;
			death_timer += death_speed;
			heal_speed = 0;
				if (death_timer > death_capacity) {
					death_countdown--;
					death_timer = 0;
				}
		}
		if (being_healed == true){
			death_speed = 0;
			heal_speed = 0.5;
			heal_timer += heal_speed;
				if (heal_timer > heal_capacity) {
					heal_countdown--;
					frame++;
					heal_timer = 0;
					being_healed = false;
				}

		}
		else if (healing_paused==true) {
			death_speed = 0;
		}
}
else{
death_speed = 0.7;
death_timer += death_speed;
heal_speed = 0;
if (death_timer > death_capacity) {
	death_countdown--;
	death_timer = 0;
	}
}




//(closest_bed.doctor_occupancy >= 2 || closest_bed.doctor_occupancy >= 1 && closest_bed.nurse_occupancy >= 1)
//(closest_bed.doctor_occupancy >= 1 || closest_bed.nurse_occupancy >= 1)

