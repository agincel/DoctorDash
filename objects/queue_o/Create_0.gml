/// @description Insert description here
if (global.wave == 1) {
	spawnfinal = 120;  //Spawning Rate WAVE 3
	spawn_allowed = 20;
}
else if (global.wave == 2) {
	spawnfinal = 115 ;  //Spawning Rate WAVE 3
	spawn_allowed = 30;
}
else if (global.wave == 3) {
	spawnfinal = 110 ;  //Spawning Rate WAVE 3
	spawn_allowed = 50;
}

spawncounter = 0
patient_occupancy = 0;
spawning = true;


//slots
stretcher1=false;
stretcher1x = x;
stretcher1y = y;

stretcher2=false;
stretcher2x = x-sprite_width * 0.2;
stretcher2y = y;

stretcher3=false;
stretcher3x = x-sprite_width * 0.4;
stretcher3y = y;

stretcher4=false;
stretcher4x = x-sprite_width * 0.6;
stretcher4y = y;

stretcher5=false;
stretcher5x = x-sprite_width * 0.8;
stretcher5y = y;


//patienttype = 0;