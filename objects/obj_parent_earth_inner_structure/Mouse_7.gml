/// @description 鼠标释放 - 检测放置位置
if (!grab) return;  // 避免一个鼠标释放操作激活多个instance的事件

grab = false;
depth = 0;
obj_earth_inner_structure_player.drag_num -= 1;

// 检测是否放到了对应类型的空slot上
var _found_slot = noone;
var _tolerance = 150;  // 检测容差（增大以便更容易吸附）

// 根据部件类型选择对应的slot对象
var _slot_obj = noone;
switch (part_type) {
    case "2div": _slot_obj = obj_earth_inner_structure_slot_2div; break;
    case "3div": _slot_obj = obj_earth_inner_structure_slot_3div; break;
    case "4div": _slot_obj = obj_earth_inner_structure_slot_4div; break;
    case "8div": _slot_obj = obj_earth_inner_structure_slot_8div; break;
}

// 遍历所有对应类型的slot，找到最近的未填充slot
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

// 如果找到了合适的slot
if (_found_slot != noone) {
    // 填充slot - slot会自动以正确的角度显示
    _found_slot.filled = true;
    global.in_box_cnt += 1;
    
    // 播放成功音效
    audio_play_sound(snd_pop, 0, false);
    
    show_debug_message("Slot filled! Type: " + part_type + " Angle: " + string(_found_slot.image_angle) + " Count: " + string(global.in_box_cnt));
}

// 部件返回原位 (无论是否成功放置)
x = origin_x;
y = origin_y;
