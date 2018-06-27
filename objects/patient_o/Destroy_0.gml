if (in_bed == true) {
	closest_bed.occupancy = 0;
}
var d = false;
if (being_healed == true) {
	global.patients_saved += 1;
	global.total_patients_saved++;
	audio_play_sound(Heal_Effect_sound,2,false);
}
else {
	d = true;
	global.death_count += 1;
	global.total_patients_lost++; 
	audio_play_sound(Death_Effect_sound,1,false);
}

event_user(0);

if (inhabitedBed) {
	inhabitedBed.occupant = noone;
}

remove_from_queue(id);

with (queue_o) {
	if (timeline_index == tl_tutorial) {
		died = d;
		timeline_running = true;	
	}
}