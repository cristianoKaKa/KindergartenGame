/// @description 鼠标释放 - 检测是否放到正确位置
if (!grab) return;
grab = false;
depth = 0;

obj_oil_engine_player.drag_num -= 1;

var _slot = instance_find(my_slot_obj, 0);
if (_slot != noone) {
	var _dist = point_distance(x, y, _slot.x, _slot.y);
	if (_dist <= 60) {
		x = _slot.x;
		y = _slot.y;
		origin_box_id = 1;
		global.in_box_cnt += 1;
		audio_play_sound(snd_pop, 0, false);
	} else {
		x = initial_x;
		y = initial_y;
		audio_play_sound(snd_beep_error, 0, false);
	}
} else {
	x = initial_x;
	y = initial_y;
}
