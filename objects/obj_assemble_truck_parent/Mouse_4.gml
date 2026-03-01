/// @description 鼠标按下 - 开始拖动
if (placed) return;

if (obj_assemble_truck_player.drag_num == 0) {
	obj_assemble_truck_player.drag_num += 1;
	grab = true;
}

depth = -1;
xx = x - mouse_x;
yy = y - mouse_y;
