/// @description Insert description here
/*placement = patient_occupancy*80;
spawncounter++;
	if (spawncounter > 50) {
	}
	else  if (spawncounter == 50) {
			patient_created = instance_create_layer(x-placement,y-12,"layer_patients",patient_o);
			spawncounter = 0;
			global.stretcher_count++;
	}
*/

if (stretcher1==true && !instance_position(stretcher1x,y-12,patient_o)){
	stretcher1 = false;
}
if (stretcher2==true && !instance_position(stretcher2x,y-12,patient_o)){
	stretcher2 = false;
}
if (stretcher3==true && !instance_position(stretcher3x,y-12,patient_o)){
	stretcher3 = false;
}
if (stretcher4==true && !instance_position(stretcher4x,y-12,patient_o)){
	stretcher4 = false;
}
if (stretcher5==true && !instance_position(stretcher5x,y-12,patient_o)){
	stretcher5 = false;
}

if (global.stretcher_count == spawn_allowed){
	spawning = false;
}


if (spawning = true) {
if (spawncounter > spawnfinal) {
	if (stretcher1==false) {
		patient_created = instance_create_layer(stretcher1x,stretcher1y ,"layer_patients",patient_o);
		stretcher1=true;
		spawncounter=0;
		global.stretcher_count++;
	}
	else if (stretcher2 == false) {
		patient_created = instance_create_layer(stretcher2x,stretcher1y ,"layer_patients",patient_o);
		stretcher2=true;
		spawncounter=0;
		global.stretcher_count++;
	}
	else if (stretcher3 == false) {
		patient_created = instance_create_layer(stretcher3x,stretcher1y ,"layer_patients",patient_o);
		stretcher3=true;
		spawncounter=0;
		global.stretcher_count++;
	}
	else if (stretcher4==false) {
		patient_created = instance_create_layer(stretcher4x,stretcher1y ,"layer_patients",patient_o);
		stretcher4=true;
		spawncounter=0;
		global.stretcher_count++;
	}
	else if (stretcher5==false) {
		patient_created = instance_create_layer(stretcher5x,stretcher1y ,"layer_patients",patient_o);
		stretcher5=true;
		spawncounter=0;
		global.stretcher_count++;
	}
	else {
	global.death_count++;
	global.stretcher_count++;
	spawncounter = 0;
	}
} 
else {
	spawncounter++;
}
}
