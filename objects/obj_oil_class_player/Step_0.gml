/// @description 检测游戏是否完成
if (obj_num < 0) {
    obj_num = instance_number(obj_parent_oil_class);
    show_debug_message("Oil class: total items = " + string(obj_num));
}

if (_succeed || obj_num <= 0) exit;

if (global.in_box_cnt >= obj_num) {
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
}
