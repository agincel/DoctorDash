///@argument c_arr array of struct_conversations to start a chain of textboxes

var tX = room_width / 2;
var tY = room_height * 0.8;

var t = instance_create_depth(tX, tY, -9999, obj_textbox);
t.arr = argument0;

