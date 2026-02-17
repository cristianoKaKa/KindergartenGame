/// @description 检测游戏是否完成

if (global.in_box_cnt != obj_num) {
    _succeed = false;
}

if (!_succeed && global.in_box_cnt == obj_num) {
    // 所有17个物品都已放入正确的box，游戏完成！
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
    show_debug_message("创造堆肥游戏完成！所有物品都已分类放入正确位置！");
}
