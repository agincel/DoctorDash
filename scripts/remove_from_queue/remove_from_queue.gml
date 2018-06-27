///@argument patient

with (queue_o) {
	for (var i = 0; i < array_length_1d(stretcher); i++) {
		if (stretcher[i] == argument0) {
			stretcher[i] = noone;	
		}
	}
}