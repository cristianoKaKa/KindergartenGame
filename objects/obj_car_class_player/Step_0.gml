if (!slots_created) {
	var _oil = instance_find(obj_box_oil, 0);
	var _hybrid = instance_find(obj_box_hybrid, 0);
	var _electry = instance_find(obj_box_electry, 0);

	function _create_slots_for_box(_box, _type) {
		var _l = _box.bbox_left;
		var _r = _box.bbox_right;
		var _t = _box.bbox_top;
		var _b = _box.bbox_bottom;

		var _w = _r - _l;
		var _h = _b - _t;

		var _car_x = (_l + _r) * 0.5;
		var _car_y = _t + _h * 0.30;

		var _logo_y = _t + _h * 0.68;
		var _logo_x1 = _l + _w * 0.28;
		var _logo_x2 = _l + _w * 0.50;
		var _logo_x3 = _l + _w * 0.72;

		var _slot = instance_create_layer(_car_x, _car_y, "Instances", obj_car_class_slot);
		_slot.match_type = _type;
		_slot.slot_kind = 0;
		_slot.filled = false;

		_slot = instance_create_layer(_logo_x1, _logo_y, "Instances", obj_car_class_slot);
		_slot.match_type = _type;
		_slot.slot_kind = 1;
		_slot.filled = false;

		_slot = instance_create_layer(_logo_x2, _logo_y, "Instances", obj_car_class_slot);
		_slot.match_type = _type;
		_slot.slot_kind = 1;
		_slot.filled = false;

		_slot = instance_create_layer(_logo_x3, _logo_y, "Instances", obj_car_class_slot);
		_slot.match_type = _type;
		_slot.slot_kind = 1;
		_slot.filled = false;
	}

	if (_oil != noone && _hybrid != noone && _electry != noone) {
		_create_slots_for_box(_oil, "oil");
		_create_slots_for_box(_hybrid, "hybrid");
		_create_slots_for_box(_electry, "electry");
		slots_created = true;
	}
}

if (!global.car_class_can_drag) {
	if (!instance_exists(obj_car_class_tutorial)) {
		global.car_class_can_drag = true;
	}
}

if (global.in_box_cnt != obj_num) {
	_succeed = false;
}

if (!_succeed && global.in_box_cnt == obj_num) {
	congrats();
	audio_play_sound(snd_co_succeed, 0, false);
	_succeed = true;
}

