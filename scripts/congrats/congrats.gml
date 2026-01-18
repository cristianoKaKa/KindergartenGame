// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function congrats(){
	var popup = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_popup);
	var button = instance_create_layer(popup.x-40, popup.y + 150, "Instances", obj_button_done);
	popup.depth = -100;
	button.depth = popup.depth - 1;
}