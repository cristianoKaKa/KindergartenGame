if (!grab) return;
grab = false;
depth = 0;

obj_shadow_pair_player.drag_num -= 1;

var _target_pos = global.target_sp_4_pos;
var _initial_pos = global.initial_sp_4_pos;
var _range = global.sp_range;

if (abs(x - _target_pos[0]) <= _range && abs(y - _target_pos[1]) <= _range) {
    x = _target_pos[0];
    y = _target_pos[1];
    
    if (origin_box_id == 0) {
        global.in_box_cnt += 1;
        show_debug_message("shadow_pair_4 placed! Count: " + string(global.in_box_cnt));
    }
    origin_box_id = 1;
    audio_play_sound(snd_pop, 0, false);
} else {
    x = _initial_pos[0];
    y = _initial_pos[1];
    
    if (origin_box_id != 0) {
        origin_box_id = 0;
        global.in_box_cnt -= 1;
        show_debug_message("shadow_pair_4 removed! Count: " + string(global.in_box_cnt));
    }
    audio_play_sound(snd_beep_error, 0, false);
}
