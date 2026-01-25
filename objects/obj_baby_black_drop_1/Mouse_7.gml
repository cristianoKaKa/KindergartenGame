/// @description 黑色油滴1 - 拖拽到银色油罐车
// 黑色油滴需要拖拽到银色油罐车(obj_baby_silver_car)

if(!grab) return;	// 避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = -1;

// 检查是否拖拽到了银色油罐车
if (place_meeting(x, y, obj_baby_silver_car)) {
	// 检查银色油罐车是否还有空位 (最多放2个黑色油滴)
	if(global.silver_car_cnt < 2){
		var _cnt = global.silver_car_cnt;
		var _pos = global.silver_car_pos[_cnt];
		
		// 将油滴移动到油罐车上的指定位置
		x = _pos[0];
		y = _pos[1];
		
		// 更新计数
		global.silver_car_cnt += 1;
		global.in_box_cnt += 1;
		
		// 播放成功音效
		audio_play_sound(snd_pop, 0, false);
		
		show_debug_message("黑色油滴1成功放入银色油罐车！当前数量: " + string(global.silver_car_cnt));
	} else {
		// 油罐车已满，播放错误音效并返回初始位置
		audio_play_sound(snd_beep_error, 0, false);
		x = initial_x;
		y = initial_y;
	}
} else {
	// 没有拖拽到正确的油罐车，播放错误音效并返回初始位置
	audio_play_sound(snd_beep_error, 0, false);
	x = initial_x;
	y = initial_y;
}