/// @description 鼠标释放 - 检测是否放到正确位置 (alternator_1 发电机1)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_water_electry_player.drag_num -= 1;

// alternator_1的目标区域和初始位置
var _target_left = global.target_alternator_1_left;
var _target_right = global.target_alternator_1_right;
var _target_top = global.target_alternator_1_top;
var _target_bottom = global.target_alternator_1_bottom;
var _target_pos = global.target_alternator_1_pos;
var _initial_pos = global.initial_pos_alternator_1;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    // 吸附到正确位置
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        global.in_box_cnt += 1;
        show_debug_message("Alternator1 placed! Count: " + string(global.in_box_cnt));
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
        show_debug_message("Alternator1 removed! Count: " + string(global.in_box_cnt));
    }
}
