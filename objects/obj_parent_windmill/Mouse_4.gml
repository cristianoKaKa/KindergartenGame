if (global.wm_succeed) return;

grab = true;
depth = -1;
xx = x - mouse_x;
yy = y - mouse_y;

if (placed) {
	var _si = my_size - 1;
	var _pi = part_idx - 2;
	global.wm_filled[_si][_pi] = false;
	global.wm_in_box_cnt -= 1;
	placed = false;
}

