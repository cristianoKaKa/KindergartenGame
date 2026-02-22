if (origin_box_id != 0) return;

if (obj_green_vehicle_player.drag_num == 0) {
	obj_green_vehicle_player.drag_num += 1;
	grab = true;
}

depth = -1;

xx = x - mouse_x;
yy = y - mouse_y;
