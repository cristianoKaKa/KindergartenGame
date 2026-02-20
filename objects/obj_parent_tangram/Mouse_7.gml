if (!grab) return;

grab = false;
depth = 0;
obj_tangram_player.drag_num -= 1;

var _found_slot = noone;
var _tolerance = 80;

var _slot_obj = noone;
switch (part_type) {
    case "triangle":  _slot_obj = obj_tangram_slot_triangle;  break;
    case "elipse":    _slot_obj = obj_tangram_slot_elipse;    break;
    case "diamond":   _slot_obj = obj_tangram_slot_diamond;   break;
    case "rectangle": _slot_obj = obj_tangram_slot_rectangle; break;
    case "trapezoid": _slot_obj = obj_tangram_slot_trapezoid; break;
}

if (_slot_obj != noone) {
    var _min_dist = _tolerance;
    with (_slot_obj) {
        if (!filled) {
            var _dist = point_distance(x, y, other.x, other.y);
            if (_dist < _min_dist) {
                _min_dist = _dist;
                _found_slot = id;
            }
        }
    }
}

if (_found_slot != noone) {
    _found_slot.filled = true;
    global.in_box_cnt += 1;

    audio_play_sound(snd_pop, 0, false);

    show_debug_message("Tangram slot filled! Type: " + part_type + " Count: " + string(global.in_box_cnt));
} else {
    audio_play_sound(snd_beep_error, 0, false);
}

x = origin_x;
y = origin_y;
