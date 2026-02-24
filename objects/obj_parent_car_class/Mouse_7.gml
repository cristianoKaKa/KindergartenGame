if (!grab) return;

grab = false;
depth = rest_depth;

obj_car_class_player.drag_num -= 1;

var _box = noone;
switch (match_type) {
	case "oil": _box = instance_find(obj_box_oil, 0); break;
	case "hybrid": _box = instance_find(obj_box_hybrid, 0); break;
	case "electry": _box = instance_find(obj_box_electry, 0); break;
}

var _in_right_box = false;
if (_box != noone) {
	var _m = 30; // margin: allow slightly outside box
	_in_right_box = point_in_rectangle(x, y, _box.bbox_left - _m, _box.bbox_top - _m, _box.bbox_right + _m, _box.bbox_bottom + _m);
}

var _best_slot = noone;
var _best_dist = 999999;

if (_in_right_box) {
	with (obj_car_class_slot) {
		if (match_type == other.match_type && slot_kind == other.slot_kind && !filled) {
			var _d = point_distance(x, y, other.x, other.y);
			if (_d < _best_dist) {
				_best_dist = _d;
				_best_slot = id;
			}
		}
	}
}

if (_best_slot != noone) {
	x = _best_slot.x;
	y = _best_slot.y;
	_best_slot.filled = true;
	origin_box_id = 1;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	audio_play_sound(snd_beep_error, 0, false);
}

