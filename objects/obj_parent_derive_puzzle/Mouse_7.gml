/// @description 鼠标释放 - 检测是否放到正确位置
if (!grab) return;
grab = false;
depth = 0;

obj_derive_puzzle_player.drag_num -= 1;

// 找到对应的slot实例
var _slot = instance_find(my_slot_obj, 0);
if (_slot != noone) {
	var _dist = point_distance(x, y, _slot.x, _slot.y);
	if (_dist <= 60) {
		// 吸附到正确位置
		x = _slot.x;
		y = _slot.y;
		origin_box_id = 1;
		global.in_box_cnt += 1;
		audio_play_sound(snd_pop, 0, false);
		show_debug_message(object_get_name(object_index) + " placed! Count: " + string(global.in_box_cnt));
	} else {
		// 返回初始位置
		x = initial_x;
		y = initial_y;
		audio_play_sound(snd_pop, 0, false);
		show_debug_message(object_get_name(object_index) + " returned to initial position");
	}
} else {
	x = initial_x;
	y = initial_y;
}