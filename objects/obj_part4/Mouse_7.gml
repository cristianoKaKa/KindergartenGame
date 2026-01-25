/// @description 鼠标释放 - 检测是否放到正确位置 (Part4)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_drill_player.drag_num -= 1;

// Part4 的目标区域和初始位置
var _target_left = global.target_4_left;
var _target_right = global.target_4_right;
var _target_top = global.target_4_top;
var _target_bottom = global.target_4_bottom;
var _target_pos = global.target_4_pos;
var _initial_pos = global.initial_pos_4;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    // 吸附到正确位置
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        // 之前不在目标位置，计数加1
        global.in_box_cnt += 1;
        show_debug_message("Part4 placed! Count: " + string(global.in_box_cnt));
    }
    origin_box_id = 4;
    audio_play_sound(snd_pop, 0, false);
} else {
    // 不在目标区域，返回初始位置
    x = _initial_pos[0];
    y = _initial_pos[1];
    
    if(origin_box_id != 0) {
        // 之前在目标位置，现在移出，计数减1
        origin_box_id = 0;
        global.in_box_cnt -= 1;
        show_debug_message("Part4 removed! Count: " + string(global.in_box_cnt));
    }
}