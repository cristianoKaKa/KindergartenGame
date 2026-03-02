/// @description 鼠标释放 - 检测是否放入正确的box
if (!grab) return;
grab = false;
depth = 0;
obj_lipstick_player.drag_num -= 1;

var _target_obj;
if (target_box == 1) {
    _target_obj = obj_lipstick_box_1;
} else if (target_box == 2) {
    _target_obj = obj_lipstick_box_2;
} else {
    return;
}

var _box_inst = instance_find(_target_obj, 0);
if (_box_inst == noone) {
    audio_play_sound(snd_beep_error, 0, false);
    x = origin_x;
    y = origin_y;
    return;
}

// 计算box实际范围（box sprite origin为左上角）
var _box_w = sprite_get_width(_box_inst.sprite_index) * _box_inst.image_xscale;
var _box_h = sprite_get_height(_box_inst.sprite_index) * _box_inst.image_yscale;
var _box_cx = _box_inst.x + _box_w / 2;
var _box_cy = _box_inst.y + _box_h / 2;

// 矩形范围检测，额外增加80像素边距（适合幼儿操作）
var _pad = 80;
var _in_box = (x > _box_inst.x - _pad)
           && (x < _box_inst.x + _box_w + _pad)
           && (y > _box_inst.y - _pad)
           && (y < _box_inst.y + _box_h + _pad);

if (_in_box) {
    placed = true;
    global.in_box_cnt += 1;
    audio_play_sound(snd_pop, 0, false);

    if (target_box == 1) {
        // Box1: bucket_2在上方，fire在下方
        if (object_index == obj_lipstick_bucket_2) {
            x = _box_cx;
            y = _box_inst.y + _box_h * 0.35;
        } else if (object_index == obj_lipstick_fire) {
            x = _box_cx;
            y = _box_inst.y + _box_h * 0.7;
        }
    } else {
        // Box2: 按网格排列（4列3行）
        var _slot = obj_lipstick_player.box2_next_slot;
        var _cols = 4;
        var _col = _slot mod _cols;
        var _row = _slot div _cols;
        var _margin_x = _box_w * 0.1;
        var _margin_y = _box_h * 0.08;
        var _cell_w = (_box_w - 2 * _margin_x) / _cols;
        var _cell_h = (_box_h - 2 * _margin_y) / 3;

        x = _box_inst.x + _margin_x + _col * _cell_w + _cell_w / 2;
        y = _box_inst.y + _margin_y + _row * _cell_h + _cell_h / 2;

        obj_lipstick_player.box2_next_slot += 1;
    }
} else {
    audio_play_sound(snd_beep_error, 0, false);
    x = origin_x;
    y = origin_y;
}
