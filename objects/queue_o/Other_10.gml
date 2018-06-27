/// @description spawn

var didSpawn = false;
for (var i = 0; i < array_length_1d(stretcher); i++) {
	if (!didSpawn && (stretcher[i] == noone)) {
		stretcher[i] = instance_create_layer(stretcherX[i], stretcherY[i], "layer_patients", patient_o);
		if (forceType >= 0) {
			stretcher[i].patient_type = forceType;
			forceType = -1;
		}
		spawnTime = 0;
		global.stretcher_count++;
		didSpawn = true;
		spawned++;
	}
}
		
if (!didSpawn) {
	global.death_count++;
	global.stretcher_count++;
	spawnTime = 0;
	audio_play_sound(Death_Effect_sound, 0, false);
	spawned++;
}

