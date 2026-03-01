/// @description Mouse Left Released - Drop logic with category validation
if (!grab) return;
grab = false;
depth = 0;
obj_oil_family_player.drag_num -= 1;

var _new_box_id = 0;
var _in_box = false;
var _slots;
var _snap_y;

if (x >= global.of_box_left && x <= global.of_box_right && y >= global.of_box_1_top && y <= global.of_box_1_bottom) {
	_new_box_id = 1;
	_in_box = true;
	_slots = global.of_slots_1;
	_snap_y = global.of_snap_y_1;
} else if (x >= global.of_box_left && x <= global.of_box_right && y >= global.of_box_2_top && y <= global.of_box_2_bottom) {
	_new_box_id = 2;
	_in_box = true;
	_slots = global.of_slots_2;
	_snap_y = global.of_snap_y_2;
} else if (x >= global.of_box_left && x <= global.of_box_right && y >= global.of_box_3_top && y <= global.of_box_3_bottom) {
	_new_box_id = 3;
	_in_box = true;
	_slots = global.of_slots_3;
	_snap_y = global.of_snap_y_3;
} else if (x >= global.of_box_left && x <= global.of_box_right && y >= global.of_box_4_top && y <= global.of_box_4_bottom) {
	_new_box_id = 4;
	_in_box = true;
	_slots = global.of_slots_4;
	_snap_y = global.of_snap_y_4;
}

if (origin_box_id == _new_box_id) {
	x = origin_x;
	y = origin_y;
	return;
}

if (_in_box) {
	var _box_cat = "";
	for (var _j = 0; _j < array_length(_slots); _j++) {
		if (_slots[_j] != "") {
			_box_cat = _slots[_j];
			break;
		}
	}

	if (_box_cat != "" && _box_cat != category) {
		audio_play_sound(snd_beep_error, 0, false);
		x = origin_x;
		y = origin_y;
		return;
	}

	var _i = 0;
	while (_i < array_length(_slots) && _slots[_i] != "") {
		_i++;
	}

	if (_i >= array_length(_slots)) {
		audio_play_sound(snd_beep_error, 0, false);
		x = origin_x;
		y = origin_y;
		return;
	}

	audio_play_sound(snd_pop, 0, false);

	if (origin_box_id != 0) {
		var _origin_slots;
		if (origin_box_id == 1) _origin_slots = global.of_slots_1;
		else if (origin_box_id == 2) _origin_slots = global.of_slots_2;
		else if (origin_box_id == 3) _origin_slots = global.of_slots_3;
		else _origin_slots = global.of_slots_4;
		_origin_slots[pos_idx] = "";
	} else {
		global.of_in_box_cnt++;
		show_debug_message("In box count +1, now: {0}", global.of_in_box_cnt);
	}

	x = global.of_snap_x[_i];
	y = _snap_y;
	_slots[_i] = category;
	pos_idx = _i;
	origin_box_id = _new_box_id;
	origin_x = x;
	origin_y = y;
} else {
	if (origin_box_id != 0) {
		var _origin_slots;
		if (origin_box_id == 1) _origin_slots = global.of_slots_1;
		else if (origin_box_id == 2) _origin_slots = global.of_slots_2;
		else if (origin_box_id == 3) _origin_slots = global.of_slots_3;
		else _origin_slots = global.of_slots_4;
		_origin_slots[pos_idx] = "";
		origin_box_id = 0;
		global.of_in_box_cnt--;
		show_debug_message("In box count -1, now: {0}", global.of_in_box_cnt);
	}
	x = start_x;
	y = start_y;
	origin_x = start_x;
	origin_y = start_y;
}
