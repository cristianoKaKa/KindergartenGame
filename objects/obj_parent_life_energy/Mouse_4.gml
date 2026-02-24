if (!global.life_energy_can_drag) return;
if (origin_box_id != 0) return;

if (obj_life_energy_player.drag_num == 0) {
	obj_life_energy_player.drag_num += 1;
	grab = true;
}

depth = -100;

xx = x - mouse_x;
yy = y - mouse_y;
