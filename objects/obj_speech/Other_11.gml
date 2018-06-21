/// @description temp go to next box

if (array_length_1d(arr) > 1) {
	//there's more conversation to be had
	var new_arr = -1;
	// show_debug_message("Arr: " + string(arr));
	for (var i = 0; i < array_length_1d(arr) - 1; i++) {
		new_arr[i] = arr[i + 1];	
	}
	// show_debug_message("New_arr: " + string(new_arr));
	create_speech(new_arr);
	instance_destroy(id);
} else {
	//last one of the conversation, do stuff depending on type
	if (a.type == "plain") { //if plain, check for valid endScript and endFile, execute if needed
		if (!is_undefined(a.endScript) && a.endScript != -1 && a.endScript != "-1") {
			script_execute(asset_get_index(a.endScript));	
		}
			
		if (!is_undefined(a.endFile) && a.endFile != -1 && a.endFile != "-1") {
			load_conversation(a.endFile);	
		}	
	}
	instance_destroy(id);
}
