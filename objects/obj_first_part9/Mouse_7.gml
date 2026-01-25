/// @description 鼠标释放 - 检测是否放到正确位置 (Part9)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_first_man_player.drag_num -= 1;

// Part9 的目标区域和初始位置
var _target_left = global.target_9_left;
var _target_right = global.target_9_right;
var _target_top = global.target_9_top;
var _target_bottom = global.target_9_bottom;
var _target_pos = global.target_9_pos;
var _initial_pos = global.initial_pos_9;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        global.in_box_cnt += 1;
        show_debug_message("Part9 placed! Count: " + string(global.in_box_cnt));
    }
    origin_box_id = 1;
    audio_play_sound(snd_pop, 0, false);
} else {
    x = _initial_pos[0];
    y = _initial_pos[1];
    
    if(origin_box_id != 0) {
        origin_box_id = 0;
        global.in_box_cnt -= 1;
        show_debug_message("Part9 removed! Count: " + string(global.in_box_cnt));
    }
}
