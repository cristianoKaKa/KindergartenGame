/// @description 鼠标释放 - 检测是否吸附到正确位置
if (!grab) return;
grab = false;
depth = 0;
obj_perforating_player.drag_num -= 1;

var _snap_dist = 120;
if (point_distance(x, y, target_x, target_y) < _snap_dist) {
    placed = true;
    x = target_x;
    y = target_y;
    global.placed_count += 1;
    audio_play_sound(snd_pop, 0, false);
} else {
    audio_play_sound(snd_beep_error, 0, false);
    x = origin_x;
    y = origin_y;
}