if (!grab) return;
grab = false;
depth = 0;

if (global.wm_succeed) return;

var _size_idx = my_size - 1;
var _part_offset = part_idx - 2;

// 在所有目标位置中找到最近的
var _best_dist = 999999;
var _best_s = -1;
var _best_p = -1;

for (var _s = 0; _s < 3; _s++) {
	for (var _p = 0; _p < 4; _p++) {
		var _tx = global.wm_targets[_s][_p][0];
		var _ty = global.wm_targets[_s][_p][1];
		var _d = point_distance(x, y, _tx, _ty);
		if (_d < _best_dist) {
			_best_dist = _d;
			_best_s = _s;
			_best_p = _p;
		}
	}
}

var _tolerance = 80;

if (_best_dist <= _tolerance) {
	if (_best_s == _size_idx && _best_p == _part_offset && !global.wm_filled[_best_s][_best_p]) {
		// 大小和位置都正确，吸附
		x = global.wm_targets[_best_s][_best_p][0];
		y = global.wm_targets[_best_s][_best_p][1];
		global.wm_filled[_best_s][_best_p] = true;
		global.wm_in_box_cnt += 1;
		placed = true;
		audio_play_sound(snd_pop, 0, false);
	} else {
		// 大小不对或位置不对，返回初始位置
		x = initial_x;
		y = initial_y;
		audio_play_sound(snd_beep_error, 0, false);
	}
} else {
	// 不在任何目标附近，返回初始位置
	x = initial_x;
	y = initial_y;
}

