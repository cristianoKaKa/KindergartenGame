/// @description 鼠标按下 - 开始拖动
if (origin_box_id != 0) return;

if (obj_oil_engine_player.drag_num == 0) {
	obj_oil_engine_player.drag_num += 1;
	grab = true;
}

depth = -1;

xx = x - mouse_x;
yy = y - mouse_y;
