if (!grab) return;
grab = false;

if (placed) {
    depth = target_depth;
    return;
}

if (target_box_type == "") {
    depth = 0;
    return;
}

var _target_obj = (target_box_type == "sea") ? obj_box_sea : obj_box_earth;
var _box = instance_find(_target_obj, 0);

var _box_w = sprite_get_width(spr_red_box);
var _box_h = sprite_get_height(spr_red_box);
var _bx1 = _box.x;
var _by1 = _box.y;
var _bx2 = _box.x + _box_w * _box.image_xscale;
var _by2 = _box.y + _box_h * _box.image_yscale;

var _over_box = point_in_rectangle(x, y, _bx1, _by1, _bx2, _by2);
var _next_order = (target_box_type == "sea") ? global.sea_next_order : global.earth_next_order;

var _order_ok = false;
if (order_num <= 6) {
    _order_ok = (order_num == _next_order);
} else {
    _order_ok = (_next_order >= 7);
}

if (_over_box && _order_ok) {
    x = target_x;
    y = target_y;
    depth = target_depth;
    placed = true;

    if (order_num <= 6) {
        if (target_box_type == "sea") {
            global.sea_next_order++;
        } else {
            global.earth_next_order++;
        }
    }
    global.in_box_cnt++;
    audio_play_sound(snd_pop, 0, false);
} else {
    x = start_x;
    y = start_y;
    depth = 0;
    audio_play_sound(snd_beep_error, 0, false);
}
