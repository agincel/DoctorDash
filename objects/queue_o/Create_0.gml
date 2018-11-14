/// @description Insert description here


forceType = -1;

timeToSpawn[0] = -1; //don't actually spawn things, it's the tutorial.
timeToSpawn[1] = 135;
timeToSpawn[2] = 140;
timeToSpawn[3] = 110;

spawnQuantity[0] = 5; //tutorial
spawnQuantity[1] = 20;
spawnQuantity[2] = 30;
spawnQuantity[3] = 50;

spawned = 0;
active = false;
alarm[0] = 200; //time to setup

spawnTime = 0;

for (var i = 0; i < 5; i++) {
	stretcher[i] = noone;
	stretcherX[i] = x - (sprite_width * 0.2 * i);
	stretcherY[i] = y;
}

if (room == Hospital_Tutorial) {
	timeline_index = tl_tutorial;
	timeline_running = true;
}