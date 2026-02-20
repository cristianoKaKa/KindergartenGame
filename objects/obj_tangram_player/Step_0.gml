if (global.in_box_cnt != obj_num) {
    _succeed = false;
}

if (!_succeed && global.in_box_cnt == obj_num && obj_num > 0) {
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
    show_debug_message("tangram game completed! All " + string(obj_num) + " slots filled.");
}
