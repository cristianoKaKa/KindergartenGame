/// @description 鼠标按下 - 开始拖动
if(obj_water_electry_player.drag_num == 0){
	obj_water_electry_player.drag_num += 1;
	grab = true;
}

depth = -1;

// 获取相对点击位置
xx = x - mouse_x;
yy = y - mouse_y;