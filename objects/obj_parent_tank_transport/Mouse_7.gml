/// @description 鼠标释放 - 检测是否放到正确位置
if (!grab) return;
grab = false;

obj_tank_transport_player.drag_num -= 1;

var _best_slot = noone;
var _best_dist = 999999;

with (obj_tank_transport_train_parent) {
	if (match_id == other.match_id && !filled) {
		var _d = point_distance(x, y, other.x, other.y);
		if (_d < _best_dist) {
			_best_dist = _d;
			_best_slot = id;
		}
	}
}

if (_best_slot != noone && _best_dist <= 100) {
	x = _best_slot.x;
	y = _best_slot.y;
	depth = _best_slot.depth - 1;
	_best_slot.filled = true;
	origin_box_id = 1;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	depth = 0;
	audio_play_sound(snd_beep_error, 0, false);
}
