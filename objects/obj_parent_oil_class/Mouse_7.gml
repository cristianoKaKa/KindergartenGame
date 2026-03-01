/// @description 鼠标释放 - 检测分类是否正确
if (!grab) return;
grab = false;
depth = 0;
obj_oil_class_player.drag_num -= 1;

var _player = obj_oil_class_player;
var _box_objs = [obj_oil_class_box_1, obj_oil_class_box_2, obj_oil_class_box_3];
var _success = false;

for (var i = 0; i < 3; i++) {
    var _box_inst = instance_find(_box_objs[i], 0);
    if (_box_inst == noone) continue;

    var _pad = 60;
    var _in_box = point_in_rectangle(x, y,
        _box_inst.bbox_left - _pad, _box_inst.bbox_top - _pad,
        _box_inst.bbox_right + _pad, _box_inst.bbox_bottom + _pad);

    if (!_in_box) continue;

    var _box_cat = _player.box_category[i];

    if (_box_cat != "" && _box_cat != category) {
        break;
    }

    placed = true;
    _success = true;
    _player.box_category[i] = category;
    _player.box_count[i] += 1;
    global.in_box_cnt += 1;
    audio_play_sound(snd_pop, 0, false);

    var _slot = _player.box_count[i] - 1;
    var _cols = 2;
    var _col = _slot mod _cols;
    var _row = _slot div _cols;

    var _bx1 = _box_inst.bbox_left;
    var _by1 = _box_inst.bbox_top;
    var _box_w = _box_inst.bbox_right - _bx1;
    var _box_h = _box_inst.bbox_bottom - _by1;
    var _margin_x = _box_w * 0.1;
    var _margin_y = _box_h * 0.08;
    var _cell_w = (_box_w - 2 * _margin_x) / _cols;
    var _cell_h = (_box_h - 2 * _margin_y) / 2;

    x = _bx1 + _margin_x + _col * _cell_w + _cell_w / 2;
    y = _by1 + _margin_y + _row * _cell_h + _cell_h / 2;

    break;
}

if (!_success) {
    audio_play_sound(snd_beep_error, 0, false);
    x = origin_x;
    y = origin_y;
}
