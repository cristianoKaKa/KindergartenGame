if (!grab) return;
grab = false;
depth = 0;

obj_china_petroleum_icon_player.drag_num -= 1;

var _best_slot = noone;
var _best_dist = 80;

with (my_slot_obj) {
	if (!filled) {
		var _d = point_distance(other.x, other.y, x, y);
		if (_d < _best_dist) {
			_best_dist = _d;
			_best_slot = id;
		}
	}
}

if (_best_slot != noone) {
	x = _best_slot.x;
	y = _best_slot.y;
	image_angle = _best_slot.image_angle;
	image_xscale = _best_slot.image_xscale;
	image_yscale = _best_slot.image_yscale;
	origin_box_id = 1;
	_best_slot.filled = true;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	audio_play_sound(snd_beep_error, 0, false);
}
