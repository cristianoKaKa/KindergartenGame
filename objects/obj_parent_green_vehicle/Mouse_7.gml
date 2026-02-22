if (!grab) return;
grab = false;
depth = rest_depth;

obj_green_vehicle_player.drag_num -= 1;

var _best_slot = noone;
var _best_dist = 999999;

for (var i = 0; i < array_length(my_slot_objs); i++) {
	var _slot = instance_find(my_slot_objs[i], 0);
	if (_slot != noone) {
		var _occupied = false;
		with (obj_parent_green_vehicle) {
			if (origin_box_id == 1 && x == _slot.x && y == _slot.y && id != other.id) {
				_occupied = true;
			}
		}
		if (!_occupied) {
			var _dist = point_distance(x, y, _slot.x, _slot.y);
			if (_dist <= 60 && _dist < _best_dist) {
				_best_dist = _dist;
				_best_slot = _slot;
			}
		}
	}
}

if (_best_slot != noone) {
	x = _best_slot.x;
	y = _best_slot.y;
	origin_box_id = 1;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	audio_play_sound(snd_beep_error, 0, false);
}
