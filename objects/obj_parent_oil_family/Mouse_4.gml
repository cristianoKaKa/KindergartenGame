/// @description Mouse Left Pressed - Start drag
if (obj_oil_family_player.drag_num == 0) {
	obj_oil_family_player.drag_num += 1;
	grab = true;
}

depth = -1;

xx = x - mouse_x;
yy = y - mouse_y;
