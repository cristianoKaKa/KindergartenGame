/// @description 鼠标释放 - 检测是否放到正确位置 (dam 大坝)
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_water_electry_player.drag_num -= 1;

// dam的目标区域和初始位置
var _target_left = global.target_dam_left;
var _target_right = global.target_dam_right;
var _target_top = global.target_dam_top;
var _target_bottom = global.target_dam_bottom;
var _target_pos = global.target_dam_pos;
var _initial_pos = global.initial_pos_dam;

// 检测是否在目标区域内
if (x >= _target_left && x <= _target_right && 
    y >= _target_top && y <= _target_bottom) {
    // 吸附到正确位置
    x = _target_pos[0];
    y = _target_pos[1];
    
    if(origin_box_id == 0) {
        global.in_box_cnt += 1;
        show_debug_message("Dam placed! Count: " + string(global.in_box_cnt));
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
        show_debug_message("Dam removed! Count: " + string(global.in_box_cnt));
    }
}
