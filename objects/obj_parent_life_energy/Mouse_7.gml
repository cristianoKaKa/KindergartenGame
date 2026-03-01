if (!grab) return;

grab = false;
depth = rest_depth;

obj_life_energy_player.drag_num -= 1;

var _box = noone;
switch (match_type) {
	case "geothermy": _box = instance_find(obj_box_life_energy_geothermy, 0); break;
	case "sun": _box = instance_find(obj_box_life_energy_sun, 0); break;
	case "water": _box = instance_find(obj_box_life_energy_water, 0); break;
	case "wind": _box = instance_find(obj_box_life_energy_wind, 0); break;
}

var _in_right_box = false;
if (_box != noone) {
	var _m = 30;
	_in_right_box = point_in_rectangle(x, y, _box.bbox_left - _m, _box.bbox_top - _m, _box.bbox_right + _m, _box.bbox_bottom + _m);
}

if (_in_right_box) {
	var _snap_x = (_box.bbox_left + _box.bbox_right) * 0.5;
	var _snap_y = (_box.bbox_top + _box.bbox_bottom) * 0.5;
	x = _snap_x;
	y = _snap_y;
	origin_box_id = 1;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	audio_play_sound(snd_beep_error, 0, false);
}
