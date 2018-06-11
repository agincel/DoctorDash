/// @description Insert description here
/*
if (patient_in = false && 
	point_in_rectangle(x,y,other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom))
	{
	other.patient_occupancy++;
	patient_in = true;
	}
else if (!point_in_rectangle(x,y,other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom) &&
	patient_in = true) {
	other.patient_occupancy--;
	patient_in = false;
}
