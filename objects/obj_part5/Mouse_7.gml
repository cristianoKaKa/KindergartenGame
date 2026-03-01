/// @description 鼠标释放 - 检测是否放到正确位置 (Part5)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_drill_player.drag_num -= 1;

// Part5 的目标区域和初始位置
var _target_left = global.target_5_left;
var _target_right = global.target_5_right;
var _target_top = global.target_5_top;
var _target_bottom = global.target_5_bottom;
var _target_pos = global.target_5_pos;
var _initial_pos = global.initial_pos_5;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    // 吸附到正确位置
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        // 之前不在目标位置，计数加1
        global.in_box_cnt += 1;
        show_debug_message("Part5 placed! Count: " + string(global.in_box_cnt));
    }
    origin_box_id = 5;
    audio_play_sound(snd_pop, 0, false);
} else {
    // 不在目标区域，返回初始位置
    x = _initial_pos[0];
    y = _initial_pos[1];
    
    if(origin_box_id != 0) {
        // 之前在目标位置，现在移出，计数减1
        origin_box_id = 0;
        global.in_box_cnt -= 1;
        show_debug_message("Part5 removed! Count: " + string(global.in_box_cnt));
    }
}
