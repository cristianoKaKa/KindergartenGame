/// @description 鼠标释放 - 检测是否放到正确位置 (alternator_2 发电机2)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_water_electry_player.drag_num -= 1;

// alternator_2的目标区域和初始位置
var _target_left = global.target_alternator_2_left;
var _target_right = global.target_alternator_2_right;
var _target_top = global.target_alternator_2_top;
var _target_bottom = global.target_alternator_2_bottom;
var _target_pos = global.target_alternator_2_pos;
var _initial_pos = global.initial_pos_alternator_2;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    // 吸附到正确位置
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        global.in_box_cnt += 1;
        show_debug_message("Alternator2 placed! Count: " + string(global.in_box_cnt));
    }
    origin_box_id = 1;
    audio_play_sound(snd_pop, 0, false);
} else {
    // 不在目标区域，返回初始位置
    x = _initial_pos[0];
    y = _initial_pos[1];
    
    if(origin_box_id != 0) {
        origin_box_id = 0;
        global.in_box_cnt -= 1;
        show_debug_message("Alternator2 removed! Count: " + string(global.in_box_cnt));
    }
}
